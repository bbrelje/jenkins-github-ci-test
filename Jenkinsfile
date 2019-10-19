pipeline {
    agent {dockerfile {
        args '-u 998:998' }
    }
    stages {
        stage('Clone sources') {
            steps {
                checkout scm
                sh "rm -r openconcept"
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