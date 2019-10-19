pipeline {
    agent {dockerfile true}
    stages {
        stage('Clone sources') {
            steps {
                git clean -fdx
                checkout scm
            }
        }

        stage('Test') {
            steps {
                sh "git clone https://github.com/mdolab/openconcept.git"
                sh "cd openconcept && python3 -m pytest --cov-config .coveragerc --cov=openconcept"
            }
        }
    }
}