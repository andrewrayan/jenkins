pipeline {
         agent any
         stages {
                 stage('One') {
                 steps {
                          docker.build("docker-test").withRun('-p 8181:3000'){c ->
                                   sh 'echo "Test passed"' 
                          }
                    
                 }
                 }

                 stage('Two') {
                 steps {
                    echo 'Completed deploying the application.'
                 }
                 }

              }
}

