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
    sh 'whoami'
     sh 'docker  build -t demo-devops-docker .'
  }

  }
 }
}