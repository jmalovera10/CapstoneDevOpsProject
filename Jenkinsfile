pipeline {
  environment{
    registry = 'jmalovera10/devopscapstone'
    registryCredential = 'dockerhub'
    dockerImage = '' 
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
        '''
        script{
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