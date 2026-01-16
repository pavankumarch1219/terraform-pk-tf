pipeline {
    agent any

    stages {

        stage('Debug Workspace') {
            steps {
                sh '''
                  echo "Current directory:"
                  pwd
                  echo "Workspace contents:"
                  ls -R
                '''
            }
        }

        stage('Terraform Init') {
            steps {
                dir('pavan-terraform-azure') {
                    sh 'terraform init -input=false'
                }
            }
        }

        stage('Terraform Validate') {
            steps {
                dir('pavan-terraform-azure') {
                    sh 'terraform validate'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                dir('pavan-terraform-azure') {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }

    post {
        success {
            echo "✅ Terraform deployment completed successfully"
        }
        failure {
            echo "❌ Terraform deployment failed"
        }
    }
}
