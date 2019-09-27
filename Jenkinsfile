pipeline {
    agent any
    stages{
        stage("Build"){
            steps {
                sh "echo '--------- START BUILDING ---------'"
                sh "ls -lrt"
                sh 'docker-compose -f build.yml up'
                sh "echo '--------- END BUILDING ---------'"
            }
        }
    }
}
