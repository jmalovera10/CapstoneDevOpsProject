pipeline {
  agent any
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
        script {
          cd capstone_app
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }

      }
    }

    stage('Deploy image') {
      steps {
        sh '''
          cd capstone_app
        '''
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }

      }
    }

  }
  environment {
    registry = 'jmalovera10/devopscapstone'
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
}