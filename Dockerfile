FROM tomcat:latest
LABEL app=my-app
MAINTAINER "kadurunarendra@gmail.com"
EXPOSE 8080
COPY ./webapp/target/webapp.war /usr/local/tomcat/bin/myweb.war
CMD ["catalina.sh", "run"]
