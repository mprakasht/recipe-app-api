FROM python:3.7-alpine
MAINTAINER Prakash Takkalaki

# It doesn't allow python to buter
ENV PYHTONUNBUFFERED 1

# Copying the requirements file to docker
COPY ./requirements.txt /requirements.txt
# intalling the requirements
RUN pip install -r /requirements.txt

#  making app directory and copying the code to app directory
RUN mkdir /app
WORKDIR /app
COPY ./app /app
# Adding user to docker 
RUN adduser -D user
USER user

