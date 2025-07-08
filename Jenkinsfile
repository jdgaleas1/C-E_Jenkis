pipeline {
    agent any

    tools {
        maven 'Maven3'
        jdk 'Java17'
    }

    stages {

        stage('Clonar') {
            steps {
                git 'https://github.com/jdgaleas1/C-E_Jenkis.git'
            }
        }

        stage('Compilar') {
            steps {
                sh './build.sh'
            }
        }

        stage('Test (opcional)') {
            steps {
                dir('ordenes1') {
                    sh './mvnw test || echo "No hay pruebas definidas o fallaron, pero se continúa..."'
                }
            }
        }

        stage('Levantar servicios') {
            steps {
                sh './reset.sh'
            }
        }
    }
}
