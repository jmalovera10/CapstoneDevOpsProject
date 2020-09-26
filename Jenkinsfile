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
    stage('Analyze') {
      steps {
        sh '''
          cd capstone_app
          npm audit fix
        '''
      }
    }
    stage('Setup image') {
      steps {
        withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'dockerhub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD']]){     
          sh '''
          cd capstone_app
          docker build -t jmalovera10/devopscapstone:v1 .
          docker push jmalovera10/devopscapstone:v1
          '''    
        }
      }
    }stage('set current kubectl context') {

    }stage('Deploy container') {

    }

  }
}