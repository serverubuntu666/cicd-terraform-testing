pipeline{
    agent any
     environment { 
                AWS_ACCESS_KEY_ID = credentials('amazon')
                AWS_SECRET_ACCESS_KEY = credentials('amazon')
    }
    tools {
        terraform 'terraform'
    }
    stages{
        stage('git checkout'){
            steps{
               git branch: 'main', url: 'https://github.com/serverubuntu666/cicd-terraform-testing.git'
            }
        }    
        stage('terraform init'){
            steps{
                sh 'terraform init -backend-config="access_key=${AWS_ACCESS_KEY_ID}" -backend-config="secret_key=${AWS_SECRET_ACCESS_KEY}"'
                }
        }
        stage('terraform apply'){
            steps{
                sh 'terraform apply --auto-approve -var access_key=${AWS_ACCESS_KEY_ID} -var secret_key=${AWS_SECRET_ACCESS_KEY}'
                }
        }
        stage('terraform destroy'){
            steps{
                sh 'terraform destroy --auto-approve -var access_key=${AWS_ACCESS_KEY_ID} -var secret_key=${AWS_SECRET_ACCESS_KEY}'
                }
        }
    }
}