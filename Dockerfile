FROM python:3.4
MAINTAINER Squirrel Developers <dev@squirrel.me>
COPY . /srv
WORKDIR /srv
RUN pip install -r requirements.txt
EXPOSE 9181
ENTRYPOINT python -c "from rq_dashboard.cli import main; main()"
CMD -p 80 -u $REDIS_URL_INT --url-prefix=rq
