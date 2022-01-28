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
                    def stack = false
                    withCredentials([string(credentialsId: 'AccessKeyID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'SecretAccessKey', variable: 'AWS_SECRET_ACCESS_KEY')]) {  
                  // stack not existed
                        try{    
                    GIT_COMMIT_EMAIL = sh ( script: 'aws cloudformation describe-stacks --stack-name ismaeelawsclitest2 --region us-east-1 ',returnStdout: true )
                    echo "-------------------------"    
                    echo "Git committer email: ${GIT_COMMIT_EMAIL}"
                        }
                        catch{
                            echo "helllll"
                        }
                        //sh 'echo "\$?" '     
                    //def tt = echo "\$?"
                        //sh "rrr=$(echo $?)"
                    //sh "echo $rrr"
                    //echo tt
                    if(!GIT_COMMIT_EMAIL){
                    if("${params.Desired_Status}"=="create"){      
                          
                            sh 'echo Creating ismaeelawsclitest2....'       
                            sh "aws  cloudformation validate-template --template-body file://ismaeelstack.yml --region us-east-1 &>/dev/null  " 
                            sh "aws  cloudformation create-stack --stack-name  ismaeelawsclitest2 --template-body file://ismaeelstack.yml --region us-east-1  --parameters ParameterKey=ImageId,ParameterValue=${params.ImageId} ParameterKey=InstanceType,ParameterValue=${params.InstanceType} "  
                        }
                    if ("${params.Desired_Status}"=="delete" ){
                        sh "echo stack not exited"
                         }
                        }
                    else  {   
                    try{
                    if("${params.Desired_Status}"=="delete" ){
                        sh "aws cloudformation delete-stack --stack-name ismaeelawsclitest2 --region us-east-1"
                        sh "echo deleted Successfully"
                    }
                    if("${params.Desired_Status}"=="create"){ 
                        sh "echo Stack alread existed"
                    }
                }
                   catch(err){
                       sh "echo can't deleted the stack"
                   } 
                }
                    }                                         
                
                                     
                }
      }
        }
                                        
        }
    }
