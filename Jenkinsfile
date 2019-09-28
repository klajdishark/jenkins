pipeline {
  agent any
  environment {
    CI = 'true'
  }
  stages {
    stage('Build Image') {
      steps {
        sh "docker build -f Dockerfile-build-prod -t application:$GIT_COMMIT ."
      }
    }
    stage('Build Container') {
      steps {
        sh "docker run -d -it --name application_$GIT_COMMIT  --network=bridge -P application:$GIT_COMMIT"
      }
    }
    stage('Test') {
      steps {
        sh "docker exec -i -u root application_$GIT_COMMIT ./bin/phpunit"
      }
    }
    stage('Deliver for development') {
      when {
        branch 'master'
       }
        steps {
            sh 'echo script'
            input message: 'Finished using the web site? (Click "Proceed" to continue)'
            sh 'echo kill'
        }
    }
  }
  post {
    failure {
       sh "docker rm application_$GIT_COMMIT"
    }
    always {
      cleanWs()
    }
  }
}
