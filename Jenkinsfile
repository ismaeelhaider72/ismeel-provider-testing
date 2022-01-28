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
                    try{    
                    stack = sh(script:"aws cloudformation describe-stacks --stack-name ismaeelawsclitest2  --region us-east-1  --query Stacks[0].StackStatus --output text ", returnStdout: true ) 
                    // echo stack
                    }
                        // catch (err){
                        //     echo "stack not exist in this region"
                        // }
                    catch (err){        
                    if("${params.Desired_Status}"=="create"){      
                          
                            sh 'echo Creating ismaeelawsclitest2....'       
                            sh "aws  cloudformation validate-template --template-body file://ismaeelstack.yml --region us-east-1  " 
                            sh "aws  cloudformation create-stack --stack-name  ismaeelawsclitest2 --template-body file://ismaeelstack.yml --region us-east-1  --parameters ParameterKey=ImageId,ParameterValue=${params.ImageId} ParameterKey=InstanceType,ParameterValue=${params.InstanceType} "  
                        }
                    if ("${params.Desired_Status}"=="delete" ){
                        sh "echo stack not exited"
                         }
                    else{
                        sh "echo stack existed"
                        stack=true
                    }          

                    }

                    if(stack){
                        sh "aws cloudformation delete-stack --stack-name ismaeelawsclitest2 --region us-east-1"
                    }

                    
                     
                    }                           
                    // else{
                    //     sh "echo cloudformation creation failed OR stack already Exist"
                    //     }
     
                    // try{              
                    // if (stack && "${params.Desired_Status}"=="delete" ) {  
                        
                    //     sh "aws cloudformation delete-stack --stack-name ismaeelawsclitest2 --region us-east-1"
                    //     sh "echo Stack deleted Successfully"
                    // }
                    //     }
                    // catch(err){
                    //     sh "echo not stack available"
                    // }                
                
                                     
                }
      }
        }
                                        
        }
    }

