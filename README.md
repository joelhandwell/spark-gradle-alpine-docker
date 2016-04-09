# spark-gradle-alpine-docker
https://github.com/perwendel/spark app example buit by gralde running in alpine linux on docker

Pre-requirements: 
 1. Install Java8, docker
 2. In Windows or Mac install docker-machine and run ```docker-machine create --driver virtualbox default```

After chaning java code, run following:
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
