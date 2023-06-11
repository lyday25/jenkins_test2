pipeline{
    agent any
    stages{
        stage("Build docker"){
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