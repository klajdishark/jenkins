pipeline {
  agent none
  stages {
    stage('Build') {
      agent {
        dockerfile {
          filename 'Dockerfile-build-prod'
          label 'application'
        }
      }
      steps {
        sh  "echo 'ksh'"
      }
    }
  }
}
