FROM python:3.4
MAINTAINER Squirrel Developers <dev@squirrel.me>
COPY . /srv
WORKDIR /srv
RUN python setup.py sdist
RUN pip install dist/rq-dashboard*.tar.gz
EXPOSE 9181
ENTRYPOINT ["rq-dashboard"]
CMD []
