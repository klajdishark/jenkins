pipeline {
  agent any
  stages {
    stage('Build Image') {
      environment{
        COMMIT_ID=sh (git rev-parse --short HEAD)
      }
      steps {
        sh "docker build -f Dockerfile-build-prod -t application:$COMMIT_ID ."
      }
    }
  }
}
