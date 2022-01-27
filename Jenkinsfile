pipeline {
    agent any
    parameters {
    string(
        name: 'ImageId',
        defaultValue: "ami-08e4e35cccc6189f4",
        description: 'images stuff')
    string(
        name: 'InstanceType',
        defaultValue: "t2.small",
        description: 'instance type' )
    } 
    stages {
        stage ('Testing') {            
          steps {                
                script {
                    withCredentials([string(credentialsId: 'AccessKeyID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'SecretAccessKey', variable: 'AWS_SECRET_ACCESS_KEY')]) {    
                    try {
                        sh 'echo Creating ismaeelawsclitest2....'       
                        sh "aws  cloudformation validate-template --template-body file://ismaeelstack.yml --region us-east-1  " 
                        sh "aws  cloudformation create-stack --stack-name  ismaeelawsclitest2 --template-body file://ismaeelstack.yml --region us-east-1  --parameters 'ParameterKey=ImageId, ParameterValue=${params.ImageId}' 'ParameterKey=InstanceType, ParameterValue=${params.InstanceType}' "  

                        

                    } catch (err) {
                        sh "echo failed jenkins"

                    }                

                 }                     
                }
      }
        }
                                        
        }
}



        name: 'InstanceType',
        defaultValue: "t2.small",
        description: 'instance type'  



----------------------
pipeline {
    agent any
    parameters {
    string(
        name: 'ImageId',
        defaultValue: "ami-08e4e35cccc6189f4",
        description: 'interesting stuff')
    } 
    stages {
        stage ('Testing') {            
          steps {                
                script {
                    withCredentials([string(credentialsId: 'AccessKeyID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'SecretAccessKey', variable: 'AWS_SECRET_ACCESS_KEY')]) {    
                    try {
                        sh 'echo Creating ismaeelawsclitest2....'       
                        sh "aws  cloudformation validate-template --template-body file://ismaeelstack.yml --region us-east-1 --parameters ImageId=${params.ImageId} " 
                        sh "aws  cloudformation create-stack --stack-name  ismaeelawsclitest2 --template-body file://ismaeelstack.yml --region us-east-1  --parameters 'ImageId=${params.ImageId} "  

                        

                    } catch (err) {
                        sh "echo failed jenkins"

                    }                

                 }                     
                }
      }
        }
                                        
        }
}
 
 
                         sh "aws  cloudformation create-stack --stack-name  ismaeelawsclitest2 --template-body file://ismaeelstack.yml --region us-east-1 --parameters 'ParameterKey=ImageId, ParameterValue=${params.ImageId}'"  

 

         name: 'InstanceType',
        defaultValue: "t2.medium",
        description: 'interesting stuff 2'
 
 
     parameters {
    choice(
        name: 'InstanceType',
        choices: "t2.micro\nt2.small\nt2.large\nt2.medium",
        description: 'interesting stuff' )
    } 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 pipeline {
    agent any

    stages {

stage ('Testing') {
      steps {
                git 'https://github.com/ismaeelhaider12/ismaeel-providers-mirroring-pipeline'
                script {
                    withCredentials([string(credentialsId: 'AccessKeyID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'SecretAccessKey', variable: 'AWS_SECRET_ACCESS_KEY')]) {
                    try {

                        sh "echo Credentail succeeded"
                        

                    } catch (err) {
                        sh "echo failed jenkins"

                    }

                    }

                 }                     
                }
      }
        }
                                        
        }




pipeline {
    agent any

    stages {

stage ('Testing') {
      steps {
                
                script {
                    withCredentials([string(credentialsId: 'AccessKeyID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'SecretAccessKey', variable: 'AWS_SECRET_ACCESS_KEY')]) {
                    try {

                        sh "echo Credentail succeeded"
                        

                    } catch (err) {
                        sh "echo failed jenkins"

                    }                

                 }                     
                }
      }
        }
                                        
        }
}






                    withCredentials([string(credentialsId: 'AccessKeyID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'SecretAccessKey', variable: 'AWS_SECRET_ACCESS_KEY')]) {





pipeline {
    agent any

    stages {

stage ('Testing') {
      steps {
                
                script {
                    
                    try {

                        sh "echo Credentail succeeded"
                        

                    } catch (err) {
                        sh "echo failed jenkins"

                    }                

                 }                     
                }
      }
        }
                                        
        }









-----------------------------------------------------------------------------------------------------------------------------



pipeline {
    agent any

    stages {

stage ('Testing') {
      steps {
                
                script {
                    withCredentials([string(credentialsId: 'AccessKeyID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'SecretAccessKey', variable: 'AWS_SECRET_ACCESS_KEY')]) {
                    try {
                        sh 'echo Creating ismaeelawsclitest2....'       
                        sh "aws cloudformation validate-template --template-body file://ismaeelstack.yml "
                        sh "aws cloudformation create-stack --stack-name  ismaeelawsclitest2 --template-body file://ismaeelstack.yml  "

                        

                    } catch (err) {
                        sh "echo failed jenkins"

                    }                

                 }                     
                }
      }
        }
                                        
        }
}


AWSTemplateFormatVersion: "2010-09-09"
Description: EC2 Stack

Parameters:
  ImageId:
    Type: String
    Default: ami-08e4e35cccc6189f4
  InstanceType:
    Type: String
    Default: t2.micro

Resources: 
  myec2:
    Type: AWS::EC2::Instance
    Properties:
      ImageId: !Ref ImageId
      InstanceType: !Ref InstanceType






AWSTemplateFormatVersion: "2010-09-09"
Description: EC2 Nested Stack

Parameters:
  
  MyKeyName:
    Type: String

  DatabaseSG:
    Type: String
  ImageId:
    Type: String

  InstanceType:
    Type: String

  SubnetId:
    Type: String
  dbname: 
    Type: String
    Default: wordpress
  dbuserpassword:
    Type: String
    Default: qniwHfNH;1Tl12
  dbusername:
    Type: String
    Default: remotewpuser2



Resources: 
  mydbInstance:
    Type: AWS::EC2::Instance
    Properties:
      KeyName: !Ref MyKeyName
      DisableApiTermination: false
      ImageId: !Ref ImageId
      InstanceType: !Ref InstanceType
      Monitoring: false
      SubnetId: !Ref SubnetId
      SecurityGroupIds: 
       - !Ref DatabaseSG
       
      UserData: 
        Fn::Base64:
          !Sub |
          #!/bin/bash 
          sudo su
          sudo wget https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm
          sudo yum localinstall mysql57-community-release-el7-11.noarch.rpm -y
          yum install -y mysql-community-server
          systemctl enable mysqld
          systemctl start mysqld
          mysql -u root "-p$(grep -oP '(?<=root@localhost\: )\S+' /var/log/mysqld.log)" -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${dbuserpassword}'" --connect-expired-password
          mysql -u root "-p${dbuserpassword}" -e "CREATE DATABASE ${dbname}"
          mysql -u root "-p${dbuserpassword}" -e "CREATE USER '${dbusername}'@'%' IDENTIFIED BY '${dbuserpassword}'"
          mysql -u root "-p${dbuserpassword}" -e "GRANT ALL PRIVILEGES ON *.* TO '${dbusername}'@'%'"
          mysql -u root "-p${dbuserpassword}" -e "FLUSH PRIVILEGES"


Outputs:
  dbprivateip:
    Description: Db instance ip
    Value:  !GetAtt mydbInstance.PrivateIp











pipeline {
    agent any
    properties([parameters([choice(choices: 't2.micro\nt2.small\nt2.medium\nt2.large', name: 'InstanceType')])    
    stages {

stage ('Testing') {
      steps {
                
                script {
                    withCredentials([string(credentialsId: 'AccessKeyID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'SecretAccessKey', variable: 'AWS_SECRET_ACCESS_KEY')]) {
                    try {
                        sh "echo getting instance type of ${params.InstanceType}"
                        sh 'echo Creating ismaeelawsclitest2....'       
                        sh "aws  cloudformation validate-template --template-body file://ismaeelstack.yml --region us-east-1"
                        sh "aws  cloudformation create-stack --stack-name  ismaeelawsclitest2 --template-body file://ismaeelstack.yml --region us-east-1 "  InstanceType : "${params.InstanceType}"

                        

                    } catch (err) {
                        sh "echo failed jenkins"

                    }                

                 }                     
                }
      }
        }
                                        
        }
}





---------- backup --------------


pipeline {
    agent any
    // parameters {
    // choice(
    //     name: 'InstanceType',
    //     choices: "t2.micro\nt2.small\nt2.large\nt2.medium",
    //     description: 'interesting stuff' )
    // }    
    stages {
        stage ('Testing') {            
          steps {                
                script {
                    withCredentials([string(credentialsId: 'AccessKeyID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'SecretAccessKey', variable: 'AWS_SECRET_ACCESS_KEY')]) {
                    try {
                        sh 'echo Creating ismaeelawsclitest2....'       
                        sh "aws  cloudformation validate-template --template-body file://ismaeelstack.yml --region us-east-1" 
                        sh "aws  cloudformation create-stack --stack-name  ismaeelawsclitest2 --template-body file://ismaeelstack.yml --region us-east-1 " , InstanceType : "${params.InstanceType}"  

                        

                    } catch (err) {
                        sh "echo failed jenkins"

                    }                

                 }                     
                }
      }
        }
                                        
        }
}







pipeline {
    agent any   
    stages {
        stage ('Testing') {            
          steps {                
                script {
                    withCredentials([string(credentialsId: 'AccessKeyID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'SecretAccessKey', variable: 'AWS_SECRET_ACCESS_KEY')]) {
                    try {
                        sh 'echo Creating ismaeelawsclitest2....'       
                        sh "aws  cloudformation validate-template --template-body file://ismaeelstack.yml --region us-east-1" 
                        sh "aws  cloudformation create-stack --stack-name  ismaeelawsclitest2 --template-body file://ismaeelstack.yml --region us-east-1 " 

                        

                    } catch (err) {
                        sh "echo failed jenkins"

                    }                

                 }                     
                }
      }
        }
                                        
        }
}




----------------------------------------------



pipeline {
    agent any
    stages {
        stage ('Testing') {            
          steps {                
                script {
                    withCredentials([string(credentialsId: 'AccessKeyID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'SecretAccessKey', variable: 'AWS_SECRET_ACCESS_KEY')]) {
                    properties([parameters([string(defaultValue: 'ami-08e4e35cccc6189f4', name: 'ImageId'), string(defaultValue: 't2.micro', name: 'InstanceType')])    
                    try {
                        sh 'echo Creating ismaeelawsclitest2....'       
                        sh "aws  cloudformation validate-template --template-body file://ismaeelstack.yml --region us-east-1 --parameters ImageId='${ImageId}', InstanceType='${InstanceType}' " 
                        sh "aws  cloudformation create-stack --stack-name  ismaeelawsclitest2 --template-body file://ismaeelstack.yml --region us-east-1 " , InstanceType : "${params.InstanceType}"  

                        

                    } catch (err) {
                        sh "echo failed jenkins"

                    }                

                 }                     
                }
      }
        }
                                        
        }
}








































