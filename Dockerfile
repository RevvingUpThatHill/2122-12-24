FROM ubuntu
COPY 112-back .
RUN apt-get update
RUN apt install git -y
RUN apt install openjdk-17-jdk-headless -y
RUN apt install maven -y
ENTRYPOINT ["mvn", "spring-boot:run"]