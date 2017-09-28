FROM python:2
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD . /code/
RUN pip install -r /code/requirements/docker.txt
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh