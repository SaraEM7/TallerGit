@echo off
call mvn clean package
call docker build -t com.mycompany/TalleEnClase .
call docker rm -f TalleEnClase
call docker run -d -p 9080:9080 -p 9443:9443 --name TalleEnClase com.mycompany/TalleEnClase