pipeline {
    agent {
        node {
             label 'notionext'
             customWorkspace '/media/notionext/usb_hdd/akshay/aosp'
        }
     }

    stages {
        stage('Init') {
            steps {
                sh "/home/akshay/bin/repo init -u https://android.googlesource.com/platform/manifest -b android-13.0.0_r30"
                echo 'Building c source'
            }
        }
        stage('Sync') {
            steps {
                sh "/home/akshay/bin/repo sync -j8"
                echo 'Building c source'
            }
        }      
        stage('Build') {
            steps {
                sh "/bin/chmod a+x build.sh"
                sh "./build.sh"
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

