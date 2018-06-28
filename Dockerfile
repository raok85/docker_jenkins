FROM ubuntu:latest

RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
rm -rf /var/cache/oracle-jdk8-installer

RUN apt-get update && \
	

#RUN apt-get install apache2 -y
#ADD start.sh /start.sh
#RUN chmod +x /start.sh
#RUN ["/start.sh"]
#CMD [""]

EXPOSE 80 9000
