pipeline {
    agent any 

    stages {
        stage('docker build dev') {
            when {
                expression { BRANCH_NAME != "main" }
            }
            steps {
                sh '''
                ls -l
                pwd
                docker build -t aju2372/ansibledev:${BUILD_NUMBER} .
                '''
            }
             
            }
        stage('Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-user-pass', passwordVariable: 'password', usernameVariable: 'username')]) {
                    sh '''
                    docker login --username=$username --password=$password
                    '''
                }
            }
        }
        stage('push to dev repo') {
            when {
                expression { BRANCH_NAME != "main" }
            }
            steps {
                sh '''
                docker push aju2372/ansibledev:${BUILD_NUMBER}
                '''
            }
        }
        stage('docker build prod') {
            when {
                expression { BRANCH_NAME == "main" }
            }
            steps {
                sh '''
                docker build -t aju2372/ansible:${BUILD_NUMBER} .
                '''
            }
             
            }
        stage('push to prod repo') {
            when {
                expression { BRANCH_NAME == "main" }
            }
            steps {
                sh '''
                docker push aju2372/ansible:${BUILD_NUMBER}
                '''
            }
        }
        
    }

    post {
        always {
            sh '''
            docker logout
            '''
        }
    }
}
