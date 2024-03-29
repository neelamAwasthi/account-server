==================================
Account service Script
==================================
#!/bin/sh
while ! nc -z config-server 9090 ; do
    echo "Waiting for the Config Server"
    sleep 3
done
while ! nc -z eureka-server 8060 ; do
    echo "Waiting for the Eureka Server"
    sleep 3
done
java -jar /opt/lib/account-service.jar