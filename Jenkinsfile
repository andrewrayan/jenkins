pipeline {
  agent any
  stages {
    stage('Git clone') {
      steps {
          checkout scm
      }
    }
    stage('Build and Package') {
      steps {
        sh "docker exec docker-test pm2 reload all"
      }
    }
    stage('tar and upload') {
       steps {
          sh "docker exec docker-test sh -c 'cd /src && npm install'"
            }
        }
    }
  }
