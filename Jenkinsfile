pipeline {
  agent none
  stages {
    stage('Build') {
      steps {
        sh  "docker build -f Dockerfile-build-prod -t application ."
      }
    }
  }
}
