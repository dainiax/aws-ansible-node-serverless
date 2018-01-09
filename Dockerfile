FROM alpine:3.7

LABEL version="1.1"
LABEL maintainer="Kazas Murka"
LABEL email="dainiax@gmail.com"

RUN apk add --update bash make && \
	apk add --no-cache curl python python-dev linux-headers musl-dev nodejs-npm \
	libffi-dev openssl-dev py-setuptools gcc && \
	npm install -g serverless && \
	curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" && \
	unzip awscli-bundle.zip && ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws && \
	easy_install-2.7 pip && pip install ansible

