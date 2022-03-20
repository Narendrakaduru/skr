FROM tomcat:9.0
LABEL app=my-app
MAINTAINER "kadurunarendra@gmail.com"
EXPOSE 9090
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps/myweb.war
CMD ["catalina.sh", "run"]
