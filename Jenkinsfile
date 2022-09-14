pipeline {
     agent { label "my-agent" } 
     
     environment {
          DOCKERHUB_CREDENTIALS=credentials('d942f0a9-5258-4d46-ba41-725d8e3ac292')
     }
     
    stages {
        stage('git clone') {
            steps {
                sh '''
                pwd
                ls -l
                '''
            }
        }
        stage('docker build') {
            steps {
                sh '''
                docker image build -t aju2372/ansible:3 .
                '''
            }
             
              }
        stage('Login') {
            steps {
                sh '''
                echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin
                '''
            }
        }
        stage('push') {
            steps {
                sh '''
                docker push aju2372/ansible:3
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
