FROM tomcat:latest

MAINTAINER sai

COPY ./WebApp/sample.war /usr/local/tomcat/webapps

EXPOSE 8080


