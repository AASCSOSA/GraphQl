# Usa una imagen base de OpenJDK 21
FROM openjdk:21-jdk-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR de tu aplicación al contenedor
COPY target/*.jar app.jar

# Expone el puerto que tu aplicación va a usar
EXPOSE 8080

# Comando para ejecutar la aplicación cuando el contenedor inicie
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
