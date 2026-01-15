FROM tomcat:9.0-jdk17-temurin

# Remove default Tomcat apps (optional but recommended)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat webapps folder
COPY target/ABCtechnologies-1.0.war /usr/local/tomcat/webapps/ABCtechnologies-1.0.war

EXPOSE 8080

ENTRYPOINT ["catalina.sh", "run"]
