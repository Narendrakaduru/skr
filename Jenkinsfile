pipeline {
  agent none
  stages {
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

    stage('Deploy to TomCat') {
      agent { dockerfile true }
      steps {
        sh 'docker build -t skr-img .'
      }
    }

  }
}
