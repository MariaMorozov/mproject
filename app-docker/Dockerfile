FROM python:3.10-alpine

LABEL maintainer="maria.morozov@gmail.com"

COPY /app-docker/requirements.txt /

RUN pip install -r /requirements.txt

ADD /app-docker/app.py /

CMD [ "python3", "./app.py" ]