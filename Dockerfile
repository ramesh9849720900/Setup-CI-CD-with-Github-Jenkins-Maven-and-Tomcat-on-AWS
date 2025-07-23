FROM tomcat:latest

# Install bash or sh
RUN apt-get update && apt-get install -y bash

# Copy WAR
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
COPY ./*.war /usr/local/tomcat/webapps
