pipeline {
    agent any

    stages {
        stage (pull) {
            steps {
                script{
                    withDockerRegistry(credentialsId: 'docker-hub') {
                    sh 'docker pull sannthosh/dev:image1'
                    sh 'docker tag sannthosh/dev:image1 sannthosh/prod:image2'
                    sh 'docker push sannthosh/prod:image2'   
                    }    
                }
            }
        }    
    }   
}
