pipeline{
    agent any
    stages{
        stage("build - Instalacion dependencias"){
            agent{
                docker{
                    image 'node:22-alpine'
                    reuseNode true
                }
            }
            stages{
                stage("build - Instalacion dependencias"){
                    steps{
                        sh 'npm install'
                    }
                } 
                stage("build - build del proyecto"){
                    steps{
                        sh 'npm run build'              
                    }
                }               
            }           
        }        
    }
}