pipeline {
    agent any
    stages{
        stage("Build"){
            steps {
                sh "echo '--------- START BUILDING ---------'"
                sh "ls -lrt"
                sh "docker-compose --version"
                sh 'pwd'
                sh "echo '--------- END BUILDING ---------'"
            }
        }
    }
}
