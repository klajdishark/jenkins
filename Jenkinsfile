pipeline {
    agent {
        docker{
            image 'ubuntu'
            args '-u root:root'
        }
    }
    stages{
        stage("Build"){
            steps {
                sh "echo '--------- START BUILDING ---------'"
                sh "${env.WORKSPACE}"
                sh 'docker-compose -f ${env.WORKSPACE}/build.yml up'
                sh "echo '--------- END BUILDING ---------'"
            }
        }
    }
}
