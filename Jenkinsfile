pipeline {
     agent { label "my-agent" } 
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
                docker image build -t aju2372/ansible:2 .
                '''
            }
        }
        stage('push') {
            steps {
                sh '''
                echo "hello Aju"
                echo "How are you"
                '''
            }
        }
    }
}
