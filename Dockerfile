FROM tomcat:8
LABEL app=my-app
MAINTAINER "kadurunarendra@gmail.com"
EXPOSE 9090
COPY /var/lib/jenkins/workspace/SaiJavaCode_master/webapp/target/webapp.war /usr/local/tomcat/webapps/myweb.war
