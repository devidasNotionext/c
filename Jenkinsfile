pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh "make all"
                echo 'Building c source'
            }
        }
        stage('Deploy') {
            steps {
                sh "./hello"
                echo 'Deploying and testing c code'
            }
        }
        stage('Release') {
            steps {
            echo ' Released code'
            }
        }
    }
}

