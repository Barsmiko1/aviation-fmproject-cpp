pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker-compose build'
            }
        }
        stage('Test') {
            steps {
                sh 'docker-compose up'
                sh 'docker-compose down'
            }
        }
        stage('Package') {
            steps {
                sh 'docker save fuel_indicator > fuel_indicator.tar'
                sh 'makensis fuelindicator.nsi'
            }
        }
        stage('Deploy') {
            steps {
                sh 'aws s3 cp FuelIndicator.exe s3://<bucket-name>/FuelIndicator_$(date +%Y%m%d_%H%M%S).exe'
            }
        }
    }
}


