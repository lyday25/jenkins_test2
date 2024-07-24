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
                sh 'docker build -t good777lord/imag:""$Build_ID"".'
            }
        }
         stage("push image to DockerHub"){
            steps{
                withDockerRegistry([credentialsId: "docker-hub" , url: ""]){
                     sh 'docker push -t good777lord/imag:""$Build_ID""'

                }
             
            }
        }
    }

    
}