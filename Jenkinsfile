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
    }stage('Deploy container') {
      steps{
        sh '''
        cd capstone_app
        aws eks --region us-east-1 update-kubeconfig --name capstone-cluster
        kubectl get svc
        kubectl apply -f ./deployment.yml
        kubectl rollout status deployments/node-deployment
        '''
      }
    }
  }
}