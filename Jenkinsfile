pipeline {
  agent any
  stages{

stage('Temp stage'){
 agent any
 steps{
 sh 'whoami'
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