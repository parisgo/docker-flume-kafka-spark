FROM centos:6.9

MAINTAINER xyu <info@paris8.org>

USER root

# Setup OpenJDK
RUN yum install -y which wget java-1.8.0-openjdk-devel 

# Setup Flume -------------------------------------------------------------------------------
ENV FLUME_HOME=/root/flume
ENV PATH=$PATH:$FLUME_HOME/bin:.

RUN wget http://apache.mirrors.ovh.net/ftp.apache.org/dist/flume/1.8.0/apache-flume-1.8.0-bin.tar.gz && \
	tar -xzvf apache-flume-1.8.0-bin.tar.gz -C /root/ && \ 
	mv /root/apache-flume-1.8.0-bin $FLUME_HOME && \ 
	rm -rf apache-flume-1.8.0-bin.tar.gz

EXPOSE 40000

COPY config/flume/* $FLUME_HOME/conf/

ADD start-flume.sh $FLUME_HOME/bin/start-flume

ENTRYPOINT [ "start-flume" ]