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
        sh "docker exec -it docker-test pm2 reload all"
      }
    }
    stage('tar and upload') {
       steps {
          echo 'Completed successfully.'
            }
        }
    }
  }
