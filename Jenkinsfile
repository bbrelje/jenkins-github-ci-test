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
                sh "cd $HOME && git clone https://github.com/mdolab/openconcept.git"
                sh "cd $HOME/openconcept && python3 -m pytest --cov-config .coveragerc --cov=openconcept"
            }
        }
    }
}