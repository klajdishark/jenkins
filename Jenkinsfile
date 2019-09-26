pipeline {
    agent { label 'docker' }
    triggers {
        triggers { pollSCM('* * * * *') }
    }
    stages{
        stage("Build"){
            steps {
                sh "echo 'ksh'"
            }
        }
    }
}
