pipeline {
  agent {label 'spring'}

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
 agent {label 'spring'}

  steps{
     sh 'docker -H 0.0.0.0:4243 build -t demo-devops-docker .'
  }
  }

 }
}
