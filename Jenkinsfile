pipeline {
    agent any
    
    stages {
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }
        stage('Build Vuetify') {
            steps {
                sh 'npm run build'
            }
        }
    }
}
