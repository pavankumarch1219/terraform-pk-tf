pipeline {
    agent any

    environment {
        TF_IN_AUTOMATION = "true"
        ARM_CLIENT_ID       = credentials('ARM_CLIENT_ID')
        ARM_CLIENT_SECRET   = credentials('ARM_CLIENT_SECRET')
        ARM_TENANT_ID       = credentials('ARM_TENANT_ID')
        ARM_SUBSCRIPTION_ID = credentials('ARM_SUBSCRIPTION_ID')
        SSH_PUBLIC_KEY      = credentials('AZURE_SSH_PUBLIC_KEY')
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init -upgrade'
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh '''
                  terraform plan \
                    -var="ssh_public_key=${SSH_PUBLIC_KEY}" \
                    -out=tfplan
                '''
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }

    post {
        success {
            echo 'Terraform Apply completed successfully ✅'
        }
        failure {
            echo 'Terraform Apply failed ❌'
        }
    }
}
