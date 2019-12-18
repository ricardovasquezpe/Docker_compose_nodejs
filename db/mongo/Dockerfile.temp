FROM ubuntu

RUN apt-get update && apt-get install -y gnupg2

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
RUN echo "deb [ arch=amd64 ] http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.4.list
RUN apt-get update -y
RUN apt-get install -y mongodb-org

RUN mkdir -p /data/db
EXPOSE 27017

CMD ["--port 27017", "--smallfiles"]
ENTRYPOINT usr/bin/mongod