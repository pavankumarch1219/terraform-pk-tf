pipeline {
    agent any

    environment {
        ARM_CLIENT_ID       = credentials('07bcd091-e1d8-4d05-82be-399afbd62fe3')
        ARM_CLIENT_SECRET   = credentials('a8V8Q~.3Af8veftzEp0FBMRW-d~fzWoEV8nEJcie')
        ARM_TENANT_ID       = credentials('6da862a1-3f94-40bb-b06d-7982ded6ed95')
        ARM_SUBSCRIPTION_ID = credentials('0b5df775-c20f-49e5-9034-c2feca4e667b')
    }

    stages {

        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
