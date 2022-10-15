pipeline {
  agent any
  stages{
  stage('Docker build'){
  agent any
  steps{
     sh 'docker -v /var/run/docker.sock:/var/run/docker.sock build -t spring-boot-docker .'
  }

  }
 }
}