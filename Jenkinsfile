pipeline {
  agent any
  stages {
    stage('Lint HTML') {
      steps {
        sh 'tidy -q -e *.html'
      }
    }

    stage('Upload to AWS') {
      steps {
        withAWS(region: 'us-east-1', credentials: 'AWS Jenkins') {
          s3Upload(bucket: 'ucty-project', file: 'index.html')
        }

      }
    }

  }
}