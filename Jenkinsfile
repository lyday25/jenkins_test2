pipeline{
    agent any
    stages{
         stage("GitHub checkout") {
            steps {
                script {
 
                    git branch: 'master', url: 'https://github.com/clement2019/jenkins-test.git' 
                }
            }
        }
        stage("Build docker on going"){
            steps{
                sh 'printenv'
                sh 'git version'
                sh 'docker build . -t good777lord/imag1.0'
            }
        }
         stage("push image to DockerHub"){
            steps{

               script {
                  
                 withCredentials([string(credentialsId: 'docker-hub', variable: 'docker-hub')]) {
                    sh 'docker login -u good777lord -p ${docker-hub}'
            }
             
            }
        }
    }
    }
}

    
