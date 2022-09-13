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
        stage('build') {
            steps {
                sh '''
                echo "hello Aju"
                echo "How are you"
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
