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
RUN apt-get install -y git
RUN git clone https://github.com/charliejllewellyn/aws-rekognition-demo
RUN git clone https://github.com/aws-samples/amazon-rekognition-video-analyzer
RUN cd aws-rekognition-demo
RUN cp workarounds/app.css ./amazon-rekognition-video-analyzer/web-ui/src/
RUN sed -i '141s/if "=" in part:/if "|" in part:/g' /usr/local/lib/python2.7/dist-packages/pynt/_pynt.py
