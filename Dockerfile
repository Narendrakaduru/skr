FROM tomcat:8
LABEL app=my-app
MAINTAINER "kadurunarendra@gmail.com"
EXPOSE 9090
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps/myweb.war
