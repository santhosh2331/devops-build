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
                        sh 'docker tag new sannthosh/dev:react'
                        sh 'docker push sannthosh/dev:react'   
                    }    
                }
            }
        }    
    }   
}

