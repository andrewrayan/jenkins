pipeline {
         agent { dockerfile true }
         stages {
                 stage('One') {
                 steps {
                     echo 'Docker application has been built successfully.'
                 }
                 }
                 stage('Two') {
                 steps {
                    echo 'Completed deploying the application.'
                 }
                 }
               
              }
}
