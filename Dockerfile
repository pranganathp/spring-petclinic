FROM tomcat:8
LABEL author='Ranganath'
COPY /target/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar /usr/local/tomcat/webapps/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar
EXPOSE 8080
CMD ["catalina.sh", "run"]
