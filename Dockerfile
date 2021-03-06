FROM python:3.6.12-alpine3.12
MAINTAINER mahecode

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user