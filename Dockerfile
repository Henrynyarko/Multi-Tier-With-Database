FROM eclipse-temurin:17-jdk-alpine
    
EXPOSE 8080
 
ENV APP_HOME /usr/src/app

# Copy the built JAR file from the target directory to the container
COPY target/*.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar"]
