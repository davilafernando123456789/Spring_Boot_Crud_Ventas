# Utiliza una imagen base de Java
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR desde el host al sistema de archivos del contenedor
COPY target/spring-boot-ventas-0.0.1-SNAPSHOT.jar app.jar

# Expone el puerto que la aplicación va a utilizar
EXPOSE 8080

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]
