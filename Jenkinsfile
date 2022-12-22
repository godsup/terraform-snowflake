pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh label: '', script: 'terraform init'
                sh label: '', script: 'terraform apply --auto-approve'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}