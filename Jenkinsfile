pipeline{
    agent any
    stages {
        stage("github checkout"){
            steps{

                script {
 
                    git branch: 'main', url: 'https://github.com/dajari1/docker-python.git' 
                }
            }
        }
        stage("build docker image"){
            steps{
                sh 'printenv'
                sh 'git version'
                sh 'docker build . -t dajari1/miller-app1'
            }
        }
        stage("push image to dockerhub"){
            steps{

                script {
                    withCredentials([string(credentialsId: 'DennisID', variable: 'DennisID')]) {
                        sh 'docker login -u dajari1 -p ${DennisID}'
                    }
                        sh 'docker push dajari1/miller-app1:latest'
            }
            }
        }
    }


}