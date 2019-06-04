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
                    echo 'Completed deploying the application.'
                 }
                 }
               
              }
}
