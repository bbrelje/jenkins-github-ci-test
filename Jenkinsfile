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
                git clone https://github.com/mdolab/openconcept.git && \
                cd openconcept && \
                python3 -m pytest --cov-config .coveragerc --cov=openconcept
            }
        }
    }
}