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
                sh './build-all.sh'
            }
        }
        stage('Test (opcional)') {
            steps {
                echo 'Aquí puedes agregar pruebas si las tienes'
            }
        }
        stage('Levantar servicios') {
            steps {
                sh './reset.sh'
            }
        }
    }
}
