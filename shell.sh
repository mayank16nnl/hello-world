pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                sh '/home/dell/flakey-deploy.sh'
            }
        }
    }
}
