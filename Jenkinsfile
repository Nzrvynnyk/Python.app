pipeline{
    agent { 
       any
    }  
    stages {
        stage('git checkout'){
            steps{
                git branch: 'main', url: 'https://github.com/Nzrvynnyk/Python.app'
            }
        }
        stage("Docker Image"){
            steps{
                sh "docker build -t nvynnyk/python-projectnzrb:latest ."
            }
        }
        stage("Docker Push"){
            steps{
                withCredentials([usernamePassword(credentialsId: 'docker_credentials', passwordVariable: 'password', usernameVariable: 'username')]) {
                    sh "docker login -u ${username} -p ${password}"
                }
                sh "docker push nvynnyk/python-projectnzrb:latest ."
            }
        }
    }        