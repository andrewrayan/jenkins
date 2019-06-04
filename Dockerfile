#
# Ubuntu Node.js Dockerfile

# Pull base image.
FROM ubuntu:18.04

# Install Node.js
RUN apt-get update
RUN apt-get install --yes curl
RUN apt-get -y install sudo
RUN curl --silent --location https://deb.nodesource.com/setup_10.x | sudo bash -
RUN apt-get install --yes nodejs
RUN apt-get install --yes build-essential
RUN npm install pm2 -g

# Bundle app source
COPY . ./src

# Install app dependencies
RUN cd /src; npm install

# Binds to port 8080
EXPOSE  8181

#  Defines your runtime(define default command)
# These commands unlike RUN (they are carried out in the construction of the container) are run when the container
CMD ["pm2-runtime", "/src/index.js"]


