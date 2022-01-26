pipeline {
    agent any

    stages {

stage ('Testing') {
      steps {
                
                script {
                    withCredentials([string(credentialsId: 'AccessKeyID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'SecretAccessKey', variable: 'AWS_SECRET_ACCESS_KEY')]) {
                    try {
                        sh "terraform --version"        
                        sh "echo Credentail succeedsed"
                        sh "aws s3 ls"
                        sh "terraform init"
                        sh "echo --------------------------"
                        sh "pwd"
                        sh "terraform apply -auto-approve"
                        

                    } catch (err) {
                        sh "echo failed jenkins"

                    }                

                 }                     
                }
      }
        }
                                        
        }
}
