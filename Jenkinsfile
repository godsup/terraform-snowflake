pipeline {
    agent any
    environment {
        SNOWFLAKE_USER="MAHENDRA"
        SNOWFLAKE_PASSWORD = credentials("SECRET_TEXTmahi")
        SNOWFLAKE_ACCOUNT="AJ17482"
        SNOWFLAKE_REGION="eu-central-1"
    }
    environment {
        SNOWFLAKE_USER="KARLIS"
        SNOWFLAKE_PASSWORD = credentials("SECRET_TEXT")
        SNOWFLAKE_ACCOUNT="KM84581"
        SNOWFLAKE_REGION="eu-central-1"
    }
    stages {
        stage('Checkout') {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/godsup/terraform-snowflake.git']]])            

          }
        }

        
        stage ("terraform init") {
            steps {
                sh ('terraform init -no-color') 
            }
        }
        
        stage ("terraform Action") {
            steps {
                sh ('terraform apply --auto-approve -no-color') 
           }
        }
    }
}
