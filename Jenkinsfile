pipeline {
  agent { docker { image 'node:' } }
  stages {
    stage('Linting') {
      steps {
        sh ''' 
          cd capstone_app
          npm i
          npm run lint
        '''
      }
    },
    stage('Build image') {
      steps {    
          sh '''
          cd capstone_app
          docker build -t jmalovera10/devopscapstone:v1 .
          '''    
      }
    },
    
  }
}