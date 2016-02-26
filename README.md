# spark-gradle-alpine-docker
https://github.com/perwendel/spark app example buit by gralde running in alpine linux on docker

After chaning java code, run following:
```
gradlew build
docker-machine default start
docker build java -t .
docker run -p 4567:4567
```

To see how it's running in Windows:
```
FOR /f "tokens=*" %i IN ('docker-machine ip') DO curl %i:4567/hello
```
