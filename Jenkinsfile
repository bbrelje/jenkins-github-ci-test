pipeline {
    agent {dockerfile true
    }
    stages {
        stage('Clone sources') {
            steps {
                checkout scm
                sh "rm -r -f openconcept"
                sh "git clone https://github.com/mdolab/openconcept.git"
            }
        }

        stage('Test') {
            steps {
                sh "cd openconcept && python3 -m pytest --cov-config .coveragerc --cov=openconcept"
            }
        }
    }
}