pipeline {
  agent any
  stages {
    stage('Build Image') {
      steps {
        sh "docker build -f Dockerfile-build-prod -t application:$GIT_COMMIT ."
      }
    }
    stage('Build Container') {
      steps {
        sh "docker run --name application:$GIT_COMMIT --expose 9000 application:$GIT_COMMIT"
      }
    }
  }
}
