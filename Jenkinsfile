pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                terraform init
                terraform apply -auto-approve
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