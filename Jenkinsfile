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
      agent {
        docker {
          image 'tomcat:jre11-temurin-focal'
        }

      }
      steps {
        sh 'cp /var/lib/jenkins/workspace/skr/webapp/target/webapp.war /usr/local/tomcat/webapps/webapp.war'
      }
    }

  }
}
