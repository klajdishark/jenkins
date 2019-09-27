pipeline {
  agent none
  stages {
    stage('Build') {
      agent {
        dockerfile {
          filename 'Dockerfile-build-prod'
        }
      }
      steps {
        sh  "echo 'ksh'"
      }
    }
  }
}
