pipeline {
  agent any
  stages{
  stage('Docker build'){
  agent docker {image 'docker'}
  steps{
     sh 'docker  build -t spring-boot-docker .'
  }

  }
 }
}