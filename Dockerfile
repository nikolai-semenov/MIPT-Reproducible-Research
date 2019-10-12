FROM python:3.7.4
MAINTAINER semenov.nn@phystech.edu

ADD * /tmp/

RUN \
cd /tmp/ && \
pip install -r requirements.txt && \
./run.sh

CMD /bin/sh
