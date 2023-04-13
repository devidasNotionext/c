pipeline {
    agent {
        node {
             label 'notionext'
             customWorkspace '/home/devidas/workspace/A12_checkout'
        }
     }

    stages {
        stage('Init') {
            steps {
                sh "/home/devidas/bin/repo init --config-name --reference=/media/storage/devidas/workspace/A12_mirror/ --dissociate -u git@gitlab.com:handsfree-fvd/external/advantech/sc66_android12_edla/manifest.git -b develop  -m HF_LA.UM.10.2.1.r1-03700-sdm660.0-develop.xml"
                echo 'Building c source'
            }
        }
        stage('Sync') {
            steps {
                sh "/home/devidas/bin/repo sync -j8"
                echo 'Building c source'
            }
        }      
        stage('Build') {
            steps {
                sh "/bin/chmod a+x build.sh"
                sh "./buildA12.sh"
                echo 'Building c source'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying on FTP server'
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

