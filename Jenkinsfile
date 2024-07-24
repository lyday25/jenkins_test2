pipeline{
    agent any
    stages{
         stage("GitHub checkout") {
            steps {
                script {
 //clone the master git
                    git branch: 'master', url: 'https://github.com/lyday25/jenkins_test2.git' 
                }
            }
        }
        stage("Build docker on going"){
            steps{
                sh 'printenv'
                sh 'git version'
                sh 'docker build . -t lyday25/imag1.0'
            }
        }
         stage("push image to DockerHub"){
            steps{

               script {
                  
                 withCredentials([string(credentialsId: 'DockerID', variable: 'DockerID')]) {
                    sh 'docker login -u lyday25 -p ${DockerID}'
            }
              sh 'docker push lyday25/imag1.0:latest'
            }
        }
    }
    }
}

    
