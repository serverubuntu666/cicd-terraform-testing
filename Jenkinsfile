// pipeline{
//     agent {label 'DEV'}
//      environment { 
//                 AWS_ACCESS_KEY_ID = credentials('amazon')
//                 AWS_SECRET_ACCESS_KEY = credentials('amazon')
//     }
//     tools {
//         terraform 'terraform'
//     }
//     stages{
//         stage('git checkout'){
//             steps{
//                git branch: 'main', url: 'https://github.com/serverubuntu666/cicd-terraform-testing.git'
//             }
//         }    
//         stage('terraform init'){
//             steps{
//                 // sh 'terraform init -backend-reconfig="access_key=${AWS_ACCESS_KEY_ID}" -backend-reconfig="secret_key=${AWS_SECRET_ACCESS_KEY}"'
//                sh 'terraform init'
//                 }
//         }
//         stage('terraform apply'){
//             steps{
//                 sh 'terraform apply --auto-approve -var access_key=${AWS_ACCESS_KEY_ID} -var secret_key=${AWS_SECRET_ACCESS_KEY}'
//                 }
//         } 
//         stage('terraform destroy'){
//             steps{
//                 sh 'terraform destroy --auto-approve -var access_key=${AWS_ACCESS_KEY_ID} -var secret_key=${AWS_SECRET_ACCESS_KEY}'
//                 }
//         }
//     }
// }

pipeline {
    agent {label 'DEV'}

    stages {
        stage('dev') {
            steps {
                echo "this is a development phase"
            }
        }
    }
}