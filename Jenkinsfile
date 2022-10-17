pipeline {
  agent any

  triggers {
      GenericTrigger(
       genericVariables: [
        [key: 'ref', value: '$.ref']
       ],
       token: '8787',
       causeString: 'Triggered on $ref',
       regexpFilterExpression: '',
       regexpFilterText: '',
       printContributedVariables: true,
       printPostContent: true
      )
    }
  stages{

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

  stage('SonarQube Scan'){
  }
  stage ('Push image into nexus'){
  }
  stage('Deploy Image to Kubernetes Cluster'){
  }
 }
}