FROM tomcat:8
LABEL app=my-app
MAINTAINER "kadurunarendra@gmail.com"
COPY target/webapp.war /usr/local/tomcat/webapps/myweb.war
