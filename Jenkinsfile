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
        sh "docker run -d  --name application_$GIT_COMMIT  --network=bridge -P application:$GIT_COMMIT"
      }
    }
    stage('Test') {
      steps {
        sh "docker exec -i -u root application_$GIT_COMMIT ./bin/phpunit"
      }
    }
  }
  post {

    always {
      cleanWs()
    }
  }
}
