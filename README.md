# spark-gradle-alpine-docker
https://github.com/perwendel/spark app example buit by gralde running in alpine linux on docker

Pre-requirements: 
 1. In Windows, Mac or Linux install Java8, docker add them to your PATH
 2. In Windows or Mac install docker-machine
 3. In Windows or Mac run ```docker-machine create --driver virtualbox default```
 4. In Windows or Mac run ```docker-machine env```
 5. Change java code and tests
 6. Run following to launch the docker container:

```
gradlew build
docker-machine start default
docker build java -t .
docker run -p 4567:4567
```

To see how it's running in Windows:
```
FOR /f "tokens=*" %i IN ('docker-machine ip') DO curl %i:4567/hello
```
