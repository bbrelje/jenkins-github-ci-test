pipeline {
    agent {
        docker { image 'ubuntu:18.04' }
    }
    stages {
        stage('Clone sources') {
            checkout scm
        }

        stage('Test') {
            steps {
                
                sh 'cat /etc/os-release >> os.txt'
            }
        }
    }
}