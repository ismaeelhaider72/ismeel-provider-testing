pipeline {
    agent any

    stages {

stage ('Testing') {
      steps {
                
                script {
                    withCredentials([string(credentialsId: 'AccessKeyID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'SecretAccessKey', variable: 'AWS_SECRET_ACCESS_KEY')]) {
                    try {
                        sh 'echo Creating ismaeelawsclitest2....'       
                        sh "aws --region us-east-1 cloudformation validate-template --template-body file://ismaeelstack.yml "
                        sh "aws --region us-east-1 cloudformation create-stack --stack-name  ismaeelawsclitest2 --template-body file://ismaeelstack.yml  "

                        

                    } catch (err) {
                        sh "echo failed jenkins"

                    }                

                 }                     
                }
      }
        }
                                        
        }
}
