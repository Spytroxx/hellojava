FROM tomcat:9.0-jdk17

# Remove default applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file
COPY /var/lib/jenkins/workspace/pipeline/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

CMD ["catalina.sh", "run"]
