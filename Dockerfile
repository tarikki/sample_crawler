# Use an official Python runtime as a parent image
FROM python:3.7-alpine

RUN apk --update add linux-headers libffi-dev openssl-dev build-base libxslt-dev libxml2-dev curl python-dev

WORKDIR /my_scraper

ADD requirements.txt /my_scraper/

RUN pip install -r requirements.txt

ADD . /my_scraper
