pipeline {
    agent { docker { image 'ruby' } }
    stages {
        stage('Build') {
            steps {
                sh 'ruby --version'
                sh '''
                    echo "Multiline shell steps works too"
                    ls -lah
                '''
            }
        }

        stage('Deploy') {
            steps {
                retry(3) {
                    sh './flakey-deploy.sh'
                }

                timeout(time: 3, unit: 'MINUTES') {
                    sh './health-check.sh'
                }
            }
        }
    }
}