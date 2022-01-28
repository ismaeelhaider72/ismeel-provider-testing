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
    choice(
        name: 'Desired_Status',
        choices: "create\ndelete",
        description: 'Create / Delete Stack' )        

    } 
    stages {
        stage ('Testing') {            
          steps {                
                script {
                    def status = null
                    withCredentials([string(credentialsId: 'AccessKeyID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'SecretAccessKey', variable: 'AWS_SECRET_ACCESS_KEY')]) {  
                        stack = sh "aws cloudformation describe-stacks --stack-name ismaeelawsclitest2  --region us-east-1  --query Stacks[0].StackStatus &>/dev/null"
                        echo stack
                         
                    }                                         
                
                                     
                }
      }
        }
                                        
        }
    }

