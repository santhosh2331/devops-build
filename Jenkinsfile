pipeline {
    agent any

    stages {
        stage (pull) {
            steps {
                script{
                    withDockerRegistry(credentialsId: 'docker-hub') {
                    sh 'docker pull sannthosh/dev:image'
                    sh 'docker tag sannthosh/dev:image sannthosh/prod:new'
                    sh 'docker push sannthosh/prod:new'   
                    }    
                }
            }
        }    
    }   
}
