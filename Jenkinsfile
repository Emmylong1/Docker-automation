node('slave-node') {
    checkout scm 
    stage ('Build image') {
    docker.withRegistry('https://registry.hub.docker.com 'docker-hub') {
    
        def customImage = docker.build("Emmanuelibok"/pipeline"latest")
        customImage.push()
    }
}
  
   stage ('Deploy') {
   sh '''docker run --name devops Emmanuelibok/pipeline:latest'''
   
   }
}
