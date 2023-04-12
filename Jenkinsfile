// parameters {
//     choice(
//         name: 'ACTION',
//         choices: ['apply', 'destroy'],
//         description: 'Select whether to apply or destroy the infrastructure'
//     )
// }
pipeline {
    agent any
    tools {
        terraform 'terraform-tool'
    }
    
    environment {
        EC2_PRIVATE_KEY = credentials('jenkins-pem-key')
    }
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'master-2', url: 'https://github.com/kashinath220598/Terraform-vpc-project.git'
            }
        }
        stage('Terraform') {
            steps {
                        sh 'terraform init'
                        sh 'terraform apply -auto-approve -var "k-key-path=${EC2_PRIVATE_KEY}"'

                        input message: 'Do you want to do Terraform Destroy?', ok: 'Confirm', submitterParameter: 'PROCEED', parameters: [
                    booleanParam(defaultValue: false, description: 'Check this box to confirm Terraform Destroy', name: 'confirmDestroy')
                    ]
                        script {
                            if (params.confirmDestroy == true) {
                                error('You did not confirm the destroy operation')
                            }
                        
                    
                }
            }
        }

        stage('terraform destroy') {
            steps 
                {
                    sh 'terraform destroy --auto-approve'
                }
            
            
        }
    }
}
