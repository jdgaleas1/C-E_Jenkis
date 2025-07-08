pipeline {
    agent any

    tools {
        maven 'Maven3'
        jdk 'Java17'
    }

    stages {
        stage('Clonar') {
            steps {
                git 'https://github.com/jdgaleas1/C-E_Jenkis'
            }
        }
        stage('Compilar') {
            steps {
                sh './build.sh'
            }
        }
        stage('Test (opcional)') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Levantar servicios') {
            steps {
                sh './reset.sh'
            }
        }
    }
}
