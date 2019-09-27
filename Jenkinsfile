pipeline {
  agent any
  stages {
    stage('Build Image') {
      steps {
        sh 'echo $GIT_COMMIT'
        sh "docker build -f Dockerfile-build-prod -t application:$GIT_COMMIT ."
      }
    }
  }
}
