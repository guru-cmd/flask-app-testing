
# Use an existing docker image as base
From ubuntu:18.04

# Download and install pip
RUN apt-get -y update
RUN apt-get -y install vim
RUN apt-get install -y python3-pip python3-dev build-essential

# If we need to copy the files in specific folder insiade the container 
WORKDIR '/flaskapp'
RUN useradd gurudatta
# Copy the requirements.txt from your work directory to the container's work directory
# Until we copy the requirements.txt file to container work directory, pip install will not work
COPY ./requirements.txt .

# Install dependencies
RUN pip3 install -r requirements.txt

#COPY of source code of work directory to the container's work directory 
COPY ./ ./

#Exposing the the 8000 port inside the container .This is the port where my flask app is running .
EXPOSE 8000

#Startup command for my container 

CMD ["python3", "hello.py"]
