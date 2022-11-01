pipeline {
  agent {label 'docker'}

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
 agent {label 'docker'}

  steps{
     sh 'docker  build -t demo-devops-docker .'
  }
  }

 }
}
