pipeline {
         agent any
         stages {
                 stage('One') {
                 steps {
                     sh "docker build -t docker-test ."
                 }
                 }
                 stage('Two') {
                 steps {
                    sh "docker run --name docker_test -p 8181:3000 -d docker-test"
                 }
                 }
                 stage('Three') {
                 steps {
                    echo 'Completed deploying the application.'
                 }
                 }

              }
}
