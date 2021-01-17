pipeline {
  
  agent any  
  
  stages {
    stage('checkout') {
      steps {
        checkout scm
  	    }
    	}
    
 
    stage('terraform version') {
      steps {
        sh 'terraform --version'
        sh 'terraform init'
	sh 'terraform plan'
      }
    }
	
    stage('MySQL deploy') {
      steps {
        sh 'terraform apply -input=false'
	      
      }
    }

  }
  
  
}
