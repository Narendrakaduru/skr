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
        sh 'docker build -t sai-java-img .'
      }
    }

    stage('Run Docker container on Jenkins Agent') {
      steps {
        sh 'docker run --name tomcat -d -p 8888:8080 sai-java-img:latest'
      }
    }

    stage('Push to DockerHub') {
      steps {
        sh 'docker tag sai-java-img:latest narendra8686/sai-java-img:latest'
        sh 'docker login -u narendra8686 -p Nani8686@'
        sh 'docker push narendra8686/sai-java-img:latest'
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