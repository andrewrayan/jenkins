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
          sh "docker cp demo.txt docker-test:/demo.txt"
            }
        }
    }
  }
