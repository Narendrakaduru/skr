FROM tomcat:8
LABEL app=my-app
MAINTAINER "kadurunarendra@gmail.com"
COPY /var/jenkins_home/workspace/SaiJavaCode_master/webapp/target/webapp.war /usr/local/tomcat/webapps/myweb.war
