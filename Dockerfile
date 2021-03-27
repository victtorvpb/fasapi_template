FROM python:3.7.4-slim-stretch


RUN apt-get update
RUN apt-get install git gcc python3-dev libpq-dev -y

RUN apt-get clean -y

WORKDIR /opt/app/my_app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . /opt/app/my_app/