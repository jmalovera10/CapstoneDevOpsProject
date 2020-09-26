pipeline {
  agent {
    docker {
      image 'node:12'
    }

  }
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

    stage('Build Image') {
      steps {
        sh '''cd capstone_app
docker build -t jmalovera10/devopscapstone:v1 .'''
      }
    }

  }
}