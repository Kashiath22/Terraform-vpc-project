parameters {
    choice(
        name: 'ACTION',
        choices: ['apply', 'destroy'],
        description: 'Select whether to apply or destroy the infrastructure'
    )
}
pipeline {
    agent any
    
    environment {
        EC2_PRIVATE_KEY = credentials('jenkins-pem-key')
    }
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'pipeline-2', url: 'https://github.com/kashinath220598/Terraform-vpc-project.git'
            }
        }
        stage('Terraform') {
            steps {
                script {
                    // if (params.ACTION == 'apply') {
                        sh 'terraform init'
                        sh 'terraform apply -auto-approve -var "private_key=${EC2_PRIVATE_KEY}"'
                    if (params.ACTION == 'destroy') {
                        sh 'terraform destroy -auto-approve'
                    } else {
                        error 'Invalid action specified'
                    }
                }
            }
        }
    }
}
