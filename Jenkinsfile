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
        sh "docker run --name application_$GIT_COMMIT -p 9000:9000 application:$GIT_COMMIT"
      }
    }
    stage('Test') {
      steps {
        sh "docker exec -i -u root application_$GIT_COMMIT ./bin/phpunit"
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
