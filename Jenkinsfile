pipeline{
    agent any
    enviroment{
        USERNAME="cmd"
    }
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
                stage("build - Instalacion dependencias"){
                    steps{
                        sh 'npm run test'
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