From ubuntu:18.04
RUN apt-get -y update
RUN apt-get install -y python3-pip python3-dev build-essential
WORKDIR '/flaskapp'
COPY ./ ./
RUN pip3 install -r ./requirements.txt
EXPOSE 8000
CMD ["python3", "hello.py"]
