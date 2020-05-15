pipeline {
  agent any
  stages {
    stage('Linting') {
      steps {
        sh 'tidy -q -e *.html'
      }
    }
    stage('Setup image') {
      steps {
        withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'dockerhub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD']]){     
          sh '''
          cd capstone
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