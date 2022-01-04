FROM tomcat:8.0-alpine
LABEL maintainer="vikas.v.sonkar@apisero.com"
ADD ./target/JenkinsWar.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
