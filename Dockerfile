FROM ubuntu

RUN mkdir /home/python/
WORKDIR /home/python/

RUN apt-get update 
RUN apt-get install -y \
sudo \
python \
python3-pip \
libpcap-dev \
libpq-dev \
python3-dev \
default-libmysqlclient-dev \
libmysqlclient-dev \
python3 \
python-dev \
build-essential \
libssl-dev \
libffi-dev \
libxml2-dev \
libxslt1-dev \
zlib1g-dev \
python-pip \
python-mysqldb \
libcairo2-dev \
pango1.0-tests

RUN apt-get update && apt-get upgrade -y  \
&& export DEBIAN_FRONTEND=noninteractive \
&& apt-get install -y tzdata \
&& ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime \
&& dpkg-reconfigure --frontend noninteractive tzdata

RUN sudo pip3 install Django===2.0.2 && \ 
apt-get install python-django -y && \
django-admin --version

EXPOSE 8000
