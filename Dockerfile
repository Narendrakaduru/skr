FROM tomcat:9.0
LABEL app=my-app
MAINTAINER "kadurunarendra@gmail.com"
EXPOSE 8888
COPY ./webapp/target/webapp.war /usr/local/tomcat/bin/myweb.war
CMD ["catalina.sh", "run"]
