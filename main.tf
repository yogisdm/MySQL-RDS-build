provider "aws" {
	region = "ap-south-1"
}

resource "aws_db_subnet_group" "dbmediawiki" {
  name       = "mediawiki-subnet-group"
  subnet_ids = "subnet-0698441978a443411"
}

# Create a database server
resource "aws_db_instance" "default" {
  engine         = "mysql"
  engine_version = "5.7"
  instance_class = "db.t3.small"
  name           = "initial_db"
  username       = "rootuser"
  password       = "rootpasswd"
  parameter_group_name = "default.mysql5.7"
  allocated_storage    = 20
  storage_type         = "gp2"
  vpc_security_group_ids = ["sg-0d3c94d96b36416e7"]
  db_instance_group_name = aws_db_subnet_group.dbmediawiki.id
}


