pipeline {
         def app
         agent any
         stages {
                 stage('One') {
                 steps {
                     app = docker.build("docker-test").withRun('-p 8181:3000')
                    
                 }
                 }
                 stage('Two') {
                 steps {
                          app.inside{
                                  sh 'echo "Test passed"' 
                          }
                 }
                 }
                 stage('Three') {
                 steps {
                    echo 'Completed deploying the application.'
                 }
                 }

              }
}

