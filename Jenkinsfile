pipeline {
    agent any
        
    stages {

stage ('Testing') {
      properties([parameters([choice(choices: 't2.micro\nt2.small\nt2.medium\nt2.large', name: 'InstanceType')])  
      steps {
                
                script {
                    withCredentials([string(credentialsId: 'AccessKeyID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'SecretAccessKey', variable: 'AWS_SECRET_ACCESS_KEY')]) {
                    try {
                        sh "echo getting instance type of ${params.InstanceType}"
                        sh 'echo Creating ismaeelawsclitest2....'       
                        sh "aws  cloudformation validate-template --template-body file://ismaeelstack.yml --region us-east-1" InstanceType : "${params.InstanceType}"
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
