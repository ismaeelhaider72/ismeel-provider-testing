pipeline {
    agent any
    parameters {
    string(
        name: 'ImageId',
        defaultValue: "ami-08e4e35cccc6189f4",
        description: 'interesting stuff'
        name: 'InstanceType',
        defaultValue: "t2.medium",
        description: 'interesting stuff 2'        
         )
    } 
    stages {
        stage ('Testing') {            
          steps {                
                script {
                    withCredentials([string(credentialsId: 'AccessKeyID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'SecretAccessKey', variable: 'AWS_SECRET_ACCESS_KEY')]) {   
                    try {
                        sh 'echo Creating ismaeelawsclitest2....'       
                        sh "aws  cloudformation validate-template --template-body file://ismaeelstack.yml --region us-east-1 --parameters ImageId=${params.ImageId}, InstanceType=${params.InstanceType} " 
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
