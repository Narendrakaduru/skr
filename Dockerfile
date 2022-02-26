FROM tomcat:8
LABEL app=my-app
MAINTAINER "kadurunarendra@gmail.com"
COPY /var/lib/jenkins/workspace/javacode_master/webapp/target/webapp.war /usr/local/tomcat/webapps/myweb.war
