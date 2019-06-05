pipeline {
  agent any
  options {
      ansiColor('xterm')
  }
  stages {
    stage('Git clone') {
      steps {
          checkout scm
      }
    }
    stage('Build and Package') {
      steps {
        withDockerContainer("docker-test") {
            sh "cd src && npm install"
        }
      }
    }
    stage('tar and upload') {
       steps {
          sh 'tar -cvf src.tar src'
            }
        }
    }
  }
}
