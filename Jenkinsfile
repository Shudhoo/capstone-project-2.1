pipeline{
    agent{
        label "k8s"
    }
    stages{
        stage("Git Clone"){
            steps{
               git 'https://github.com/Shudhoo/capstone-project-2.1.git'
            }
        }
        stage("Build & Push Docker Image"){
            steps{
                withDockerRegistry(credentialsId: 'docker-cred', url: 'https://index.docker.io/v1/'){
                    dir('/home/ubuntu/jenkins/workspace/Capstone-Project-2-Pipeline') {
                        sh '''sudo docker build --file Dockerfile --tag shudhodhan/mycapstone:$BUILD_NUMBER .
                        sudo docker push shudhodhan/mycapstone:$BUILD_NUMBER'''
                    }
                }
            }
        }
        stage("Deployment of Application"){
            steps{
                dir('/home/ubuntu/jenkins/workspace/Capstone-Project-2-Pipeline') {
                    sh "sed -i 's|REPLACE_TAG|$BUILD_NUMBER|g' deployment.yml"
                    sh 'kubectl apply -f deployment.yml'
                    sh 'kubectl apply -f service.yml'
                }
            }
        }
    }
}


