pipeline {
  agent {label 'jenkins-docker-slave'}

  triggers {
      GenericTrigger(
       genericVariables: [
        [key: 'ref', value: '$.ref']
       ],
       token: '8787',
       causeString: 'Triggered on ',
       regexpFilterExpression: '',
       regexpFilterText: '',
       printContributedVariables: true,
       printPostContent: true
      )
    }
  stages{

  stage('Docker build'){
 agent {label 'jenkins-docker-slave'}

  steps{
     sh 'docker  build -t demo-devops-docker .'
  }
  }

 }
}
