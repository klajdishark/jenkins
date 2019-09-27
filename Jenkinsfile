pipeline {
  agent any
  stages {
    stage('Build Image') {
      steps {
        sh "COMMIT_ID=\"\$(git rev-parse --short HEAD)\""
        sh  "docker build -f Dockerfile-build-prod -t application:${COMMIT_ID} ."
      }
    }
  }
}
