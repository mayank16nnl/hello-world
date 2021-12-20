pipeline {
    agent any
    stages {
        stage('Deploy') {
            steps {
                timeout(time: 3, unit: 'MINUTES') {
                    retry(5) {
                        sh '/home/dell/flakey-deploy.sh'
                    }
                }
            }
        }
    }
}
