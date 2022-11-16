node {
    def app
    stage('Clone repository') {
        git 'https://github.com/YYJ-1229/Eple_personal.git'
    }
    stage('Build image') {
        app = docker.build("yangdori/test")
    }
    stage('Test image') {
        app.inside {
            sh 'make test'
        }
    }
    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
           app.push("${env.BUILD_NUMBER}")
           app.push("latest")
        }
    }
}
