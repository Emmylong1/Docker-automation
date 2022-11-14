node('slave-node') {
    checkout scm 
    stage ('Build image') {
    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') {
    
        def customImage = docker.build("Nginx/pipelin:latest")
        customImage.push()
    }
}
  
   stage ('Deploy') {
   sh '''docker run --name devops Nginx/pipeline:latest'''
   
   }
}
