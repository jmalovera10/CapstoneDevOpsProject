pipeline {
  environment {
    registry = 'jmalovera10/devopscapstone'
    registryCredential = 'dockerhub'
  }
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
        sh '''
          cd capstone_app
          sudo docker build -t $registry:$BUILD_NUMBER .
        '''
      }
    }

    stage('Deploy image') {
      steps {
        withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'dockerhub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD']]){     
          sh '''
          cd capstone_app
          sudo docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
          sudo docker push $registry:$BUILD_NUMBER
          '''    
        }

      }
    }
    // stage('Deploy container') {
    //   withAWS(region:"us-east-1", credentials:"aws-credentials"){
    //     steps{
    //       sh '''
    //       cd capstone_app
    //       aws eks --region us-east-1 update-kubeconfig --name capstone-cluster
    //       kubectl get svc
    //       kubectl apply -f ./deployment.yml
    //       kubectl rollout status deployments/node-deployment
    //       '''
    //     }
    //   }
    // }
    stage('Cleaning up') {            
      steps { 
        sh "docker rmi $registry:$BUILD_NUMBER" 
      }
    } 

  }
}