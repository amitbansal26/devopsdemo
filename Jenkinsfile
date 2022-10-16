pipeline {
  agent any
  stages{

   stage('Change ownership'){
    agent any
    steps {
     sh 'sudo chmod 777 /var/run/docker.sock'
    }

    }
  stage('Docker build'){
  agent {
      docker {
      image 'docker'
      args '-v //var/run/docker.sock:/var/run/docker.sock'
      }
  }
  steps{
     sh 'docker  build -t demo-devops-docker .'
  }

  }
 }
}