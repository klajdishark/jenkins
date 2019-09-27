pipeline {
  agent any
  stages {
    stage('Build Image') {
      steps {
        sh 'echo $GIT_BRANCH'
        sh "docker build -f Dockerfile-build-prod -t application:$COMMIT_ID ."
      }
    }
  }
}
