# ubuntu 18 tags docker: 18.04, bionic-20191029, bionic, latest
FROM        ubuntu:bionic-20191029
MAINTAINER  ammar257ammar@gmail.com

USER root

RUN         apt-get update \
                && apt-get install -yq \
                    time \
		    software-properties-common \
		    wget \
		    openjdk-8-jdk

WORKDIR /mapper
COPY rmlmapper.jar .

RUN chmod 755 rmlmapper.jar

RUN ls

ENTRYPOINT ["java", "-jar", "/rmlmapper.jar"]
CMD ["-h"]


