pipeline {
    agent any
    stages{
        stage("Build"){
            steps {
                sh "echo '--------- START BUILDING ---------'"
                sh "ls -lrt"
                sh "docker-compose --version"
                sh 'docker-compose -f /var/jenkins_home/workspace/jenkins-app_test/build.yml up'
                sh "echo '--------- END BUILDING ---------'"
            }
        }
    }
}
