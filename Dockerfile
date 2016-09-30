FROM node:argon
MAINTAINER Runnable, Inc.

# Cache NPM Install
ADD package.json /var/www/runnable/
WORKDIR /var/www/runnable/
RUN npm install 

# Build Application
ADD . /var/www/runnable/
RUN npm run build

EXPOSE 80 443
CMD ["npm start"]