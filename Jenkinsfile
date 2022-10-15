pipeline {
  agent any
  stages{
  stage('Docker build'){
  agent any
  steps{
     sh 'docker  build -t spring-boot-docker .'
  }

  }
 }
}