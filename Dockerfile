FROM eclipse-temurin:17-jdk-jammy as builder
#RUN addgroup demogroup; adduser  --ingroup demogroup --disabled-password demo
USER root
WORKDIR /opt/app
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN chmod 755 mvnw
RUN ./mvnw -Dmaven.wagon.http.ssl.allowall=true dependency:go-offline
COPY ./src ./src
RUN ./mvnw clean install


FROM eclipse-temurin:17-jre-jammy
RUN addgroup demogroup; adduser  --ingroup demogroup --disabled-password demo
USER demo
WORKDIR /opt/app
EXPOSE 8080
COPY --from=builder /opt/app/target/*.jar /opt/app/*.jar
ENTRYPOINT ["java", "-jar", "/opt/app/*.jar" ]