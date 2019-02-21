#!/bin/bash

sudo kill `sudo lsof -t -i:8888`

export ENCRYPT_KEY=abcd


rm /home/ubuntu/config-nohup.out

nohup java -Deureka.client.serviceUrl.defaultZone=http://10.0.1.28:8761/eureka/ -jar zipster-hyperloop-config-service-0.0.2-SNAPSHOT.jar > /home/ubuntu/config-nohup.out &


