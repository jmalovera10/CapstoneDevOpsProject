pipeline {
  agent { docker { image 'node:12' } }
  stages {
    stage('Linting') {
      steps {
        sh ''' 
          cd capstone_app
          npm i
          npm run lint
        '''
      }
    }
  }
}