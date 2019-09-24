FROM tomcat:latest

MAINTAINER sai

WORKDIR . 

COPY ./WebApp/sample.war /usr/local/tomcat/webapps

EXPOSE 8080


