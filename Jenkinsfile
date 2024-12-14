pipeline {
    agent any

    stages {
        stage('code') {
            steps {
               git branch: 'dev', url: 'https://github.com/santhosh2331/devops-build.git'
            }
        }
        stage('build') {
            steps {
                sh './build.sh'
            }
        }
        stage ('push') {
            steps {
                script{
                   withDockerRegistry(credentialsId: 'docker-hub') {
                        sh 'docker tag my-nginx-app sannthosh/dev:image1'
                        sh 'docker push sannthosh/dev:image1'   
                    }    
                }
            }
        }    
    }   
}

