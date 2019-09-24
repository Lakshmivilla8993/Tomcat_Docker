FROM tomcat:latest

MAINTAINER sai
 

RUN cp  WebApp/sample.war /usr/local/tomcat/webapps

EXPOSE 8080


