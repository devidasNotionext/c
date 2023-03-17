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
                sh "source build/envsetup.sh SC138-EAU-20-00"
                echo 'Building c source'
            }
        }
        stage('Deploy') {
            steps {
                sh "lunch sc138-userdebug"
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

