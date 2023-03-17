pipeline {
    agent {
        node {
             label 'notionext'
             customWorkspace '/home/devidas/workspace/vendor11_dev'
        }
     }

    stages {
        stage('Build') {
            steps {
                sh "make hello"
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
                sh "echo Hello > test.txt"
                echo 'creating file'
            }
        }
    }
}

