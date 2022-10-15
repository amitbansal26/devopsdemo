pipeline {
  agent any
  stages{
  stage('Docker build'){
  agent {
      docker {
      image 'docker'
      args '-v //var/run/docker.sock:/var/run/docker.sock'

      }
  }
  steps{
     sh 'sudo chmod 666 /var/run/docker.sock'
     sh 'docker  build -t demo-devops-docker .'
  }

  }
 }
}