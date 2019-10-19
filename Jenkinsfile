pipeline {
    agent {dockerfile true}
    stages {
        stage('Clone sources') {
            steps {
                checkout scm
            }
        }

        stage('Test') {
            steps {
                
                sh 'cat /etc/os-release >> os.txt'
            }
        }
    }
}