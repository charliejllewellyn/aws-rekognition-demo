FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get install -y python-pip
RUN pip install opencv-python
RUN pip install boto3
RUN pip install awscli
RUN pip install pytz 	
RUN pip install pynt
RUN apt-get install -y openssh-client vim
RUN apt-get install -y libglib2.0-0 libsm6 libxrender1
