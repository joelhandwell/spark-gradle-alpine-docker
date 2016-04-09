# spark-gradle-alpine-docker
https://github.com/perwendel/spark app example buit by gralde running in alpine linux on docker

Steps to launch this in your local computer: 
 1. In Windows, Mac or Linux install git, Java8, docker add them to your PATH
 2. In Windows or Mac install docker-machine
 3. In Windows or Mac run ```docker-machine create --driver virtualbox default```
 4. In Windows or Mac run ```docker-machine env```
 5. Pull this repo and change java code and tests
 6. Run following to launch the docker container:

```
gradlew build
docker-machine start default
docker build -t spark-gradle-alpine-docker .
docker run -p 4567:4567 spark-gradle-alpine-docker
```

You will see something like following result:

```
hello world! today is 2016-04-09
[Thread-0] INFO org.eclipse.jetty.util.log - Logging initialized @228ms
[Thread-0] INFO spark.webserver.JettySparkServer - == Spark has ignited ...
[Thread-0] INFO spark.webserver.JettySparkServer - >> Listening on 0.0.0.0:4567
[Thread-0] INFO org.eclipse.jetty.server.Server - jetty-9.3.z-SNAPSHOT
[Thread-0] INFO org.eclipse.jetty.server.ServerConnector - Started ServerConnector@2cea8c7d{HTTP/1.1,[http/1.1]}{0.0.0.0:4567}
[Thread-0] INFO org.eclipse.jetty.server.Server - Started @357ms
```

To see how it's running in Windows:
```
FOR /f "tokens=*" %i IN ('docker-machine ip') DO curl %i:4567/hello
```
This results like:
```
curl 192.168.99.100:4567/hello
Hello World! today is 2016-04-09
```
