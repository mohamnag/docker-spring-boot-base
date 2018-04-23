FROM openjdk:9-jre-slim

# Define path to app folder as env var so that
# it can be found in runtime too
ENV APP_DIR '/opt/app/'
ENV APP_CONF_DIR "${APP_DIR}config/"

WORKDIR ${APP_DIR}

VOLUME ${APP_CONF_DIR}
EXPOSE 8080

CMD ["java", "--add-opens", "java.base/java.lang=ALL-UNNAMED", "-jar", "app.jar"]
