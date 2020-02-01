FROM python:3.8.1
USER root
ENV TZ 'Asia/Seoul'
RUN rm -rf /etc/localtime
RUN ln -s /usr/share/zoneinfo/Asia/Seoul /etc/localtime
RUN apt-get update && apt-get -y install cron && apt-get -y install vim

RUN mkdir -p /python-package
RUN cp -r /usr/local/lib/python3.8/site-packages /python-package

RUN mkdir -p /python3
ADD ./src /python3/src
ADD ./setup /python3/setup

WORKDIR /python3/src
CMD tail -f /dev/null