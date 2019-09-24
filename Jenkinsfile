pipeline{
   
    environment{

           registry = "saivilla/docker-test"
           registryCredentials = "docker_hub_credentials"

           dockerImage= ''
      }

    agent any

    stages{

	stage('git cloning'){
             steps{

			git 'https://github.com/Lakshmivilla8993/Tomcat_Docker.git'

		  }    
	     }
	stage('Building stage'){
	      steps{
			script{
					dockerImage = docker.build registry + ":$BUILD_NUMBER"
				}
			
		}
		
		}
	stage('Deploying Image'){
		steps{
			script{
				docker.withRegistry('',registryCredentials){
					dockerImage.push()
				}
				}
			}

		}

	stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }



        }	




}
