provider "aws" {
	region = "ap-south-1"
}

# Create a database server
resource "aws_db_instance" "default" {
  engine         = "mysql"
  engine_version = "5.7"
  instance_class = "db.t1.micro"
  name           = "initial_db"
  username       = "rootuser"
  password       = "rootpasswd"
  endpoint       = "mysql-example.com:3306"
  parameter_group_name = "default.mysql5.7"
  allocated_storage    = 20
  storage_type         = "gp2"
  vpc_security_group_ids = ["sg-0d3c94d96b36416e7"]
  # etc, etc; see aws_db_instance docs for more
}


