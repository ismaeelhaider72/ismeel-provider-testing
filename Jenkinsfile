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
                        sh "aws  cloudformation create-stack --stack-name  ismaeelawsclitest2 --template-body file://ismaeelstack.yml --region us-east-1 --parameters 'ParameterKey=ImageId, ParameterValue=${params.ImageId}'"  

                        

                    } catch (err) {
                        sh "echo failed jenkins"

                    }                

                 }                     
                }
      }
        }
                                        
        }
}
