pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')        // Jenkins credentials ID
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key') // Jenkins credentials ID
        TF_VAR_region = 'us-west-1' // Example: for Mumbai
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Mor-ty/ATS-Tracker.git'
            }
        }        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            steps {
                input message: 'Approve to apply Terraform changes?', ok: 'Apply'
                sh 'terraform apply -auto-approve tfplan'
            }
        }

        // Optional cleanup stage
        // stage('Terraform Destroy') {
        //     steps {
        //         input message: 'Confirm destroy?', ok: 'Destroy'
        //         sh 'terraform destroy -auto-approve'
        //     }
        // }
    }

    post {
        failure {
            echo "Terraform pipeline failed!"
        }
        success {
            echo "Terraform pipeline completed successfully!"
        }
    }
}
