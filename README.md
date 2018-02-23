# This container installs the dependencies required to run:

https://github.com/aws-samples/amazon-rekognition-video-analyzer

## pre-reqs

docker

## Build and run the container

```
git clone https://github.com/charliejllewellyn/aws-rekognition-demo
cd amazon-rekognition-video-analyzer
docker build .
```

Run the resulting with:

```
docker run -p 8080:8080 -ti <docker ID>
```

## Getting it running

```
aws configure
cd amazon-rekognition-video-analyzer/
pynt packagelambda
pynt deploylambda
pynt createstack
pynt webui ; pynt webuiserver &
```

```
pynt videocaptureip['http://192.168.1.80:88/cgi-bin/CGIStream.cgi?cmd=GetMJStream&usr=admin&pwd=F3wd18tC',30]
```
