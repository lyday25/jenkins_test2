pipeline{
    agent any
    stages{
        stage("Build docker"){
            steps{
                sh 'printenv'
                sh 'docker build -t good777lord/jendonimag:""$Build_ID"".'
            }
        }
         stage("push image to DockerHub"){
            steps{
                docker.withRegistry([credentialsId: "docker-hub" , url: ""]){
                     sh 'docker build -t good777lord/jendonimag:""$Build_ID""'

                }
             
            }
        }
    }

    
}