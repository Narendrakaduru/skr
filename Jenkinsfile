pipeline {
  agent none
  stages {
    stage('Checkout SCM') {
      agent {
        docker {
          image 'docker-dev:1.9'
        }

      }
      steps {
        git(url: 'https://github.com/Narendrakaduru/skr.git', credentialsId: 'GitAuth', branch: 'main')
      }
    }

    stage('Build') {
      agent {
        docker {
          image 'maven:3.8.1-adoptopenjdk-11'
        }

      }
      steps {
        sh 'mvn clean package'
      }
    }

    stage('Front-end') {
      agent {
        docker {
          image 'node:16-alpine'
        }

      }
      steps {
        sh 'node --version'
      }
    }

  }
}