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
                ftpPublisher alwaysPublishFromMaster: false, continueOnError: false, masterNodeName: '', paramPublish: null, failOnError: false, publishers: [[configName: 'testftp', transfers: [[asciiMode: false, cleanRemote: false, excludes: '', flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: 'hello']], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false]]
            }
        }
    }
}

