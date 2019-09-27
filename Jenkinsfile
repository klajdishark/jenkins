pipeline {
    agent {
        docker
            {
                args '-u root:sudo -v ${env.WORKSPACE}'
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
