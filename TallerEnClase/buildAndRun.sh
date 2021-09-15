#!/bin/sh
mvn clean package && docker build -t com.mycompany/TalleEnClase .
docker rm -f TalleEnClase || true && docker run -d -p 9080:9080 -p 9443:9443 --name TalleEnClase com.mycompany/TalleEnClase