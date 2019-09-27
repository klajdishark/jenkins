pipeline {
    agent any
    stages{
        stage("Build"){
            steps {
                sh "echo '--------- START BUILDING ---------'"
                sh 'docker-compose -f build.yml up
                sh "echo '--------- END BUILDING ---------'"
            }
        }
    }
}
