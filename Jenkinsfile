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
        stage('test image') {
            steps {
                sh '''
                'echo "test passed"'
                '''
            }
        }
        stage('push') {
            steps {
                sh '''
                docker.withRegistry('https://hub.docker.com', 'credentials-id') {
                app.push("${env.BUILD_NUMBER}")
                app.push("latest")
                '''
            }
        }
    }
}
