pipeline {
  agent any
  stages {
    stage('Checkout SCM') {
      parallel {
        stage('Checkout SCM') {
          steps {
            git(url: 'https://github.com/Narendrakaduru/SaiJavaCode.git', credentialsId: 'GitAuth')
          }
        }

        stage('Check POM') {
          steps {
            fileExists 'pom.xml'
          }
        }

      }
    }

    stage('Build') {
      parallel {
        stage('Build') {
          steps {
            sh 'mvn clean package'
          }
        }

        stage('Print Tester') {
          steps {
            echo "The Tester is ${TESTER}"
            sleep 5
          }
        }

        stage('Build No') {
          steps {
            echo "Print Build No ${BUILD_ID}"
            sleep 10
          }
        }

      }
    }

    stage('Test') {
      steps {
        sh 'mvn test'
      }
    }

    stage('Docker Build') {
      steps {
        sh 'docker build -t narendra8686/my-app:1.0.0 .'
      }
    }

    stage('Publish to Docker Hub') {
      steps {
        withDockerRegistry(credentialsId: 'DockerAuth', url: 'https://hub.docker.com/') {
          sh 'docker push narendra8686/my-app:1.0.0'
        }

      }
    }

  }
  tools {
    maven 'M2_HOME'
  }
  environment {
    TESTER = 'Nani'
    BUILD_ID = '1.0.0'
  }
}