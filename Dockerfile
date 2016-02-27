# AlpineLinux with a glibc-2.21 and Oracle Java 8

FROM anapsix/alpine-java
MAINTAINER Joel Handwell

ADD ./build /build

EXPOSE 4567

CMD java -classpath /build/libs/java-all-1.0.jar com.github.joelhandwell.HelloWorld
