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


        stage('Levantar servicios') {
            steps {
                sh 'docker-compose down && docker volume rm ordenes1_data || true && docker-compose up -d --build'

            }
        }
    }
}
