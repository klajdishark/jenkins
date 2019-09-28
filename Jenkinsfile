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
        sh "docker run --name application --publish --expose 9000 application:$GIT_COMMIT"
      }
    }
    stage('Test') {
      steps {
        sh "docker exec -i -u root application ./bin/phpunit"
      }
    }
  }
  post {

    always {
      cleanWs()
    }
  }
}
