FROM node:4.6.0

# Create app directory
RUN mkdir -p /usr/src/app
RUN mkdir -p /usr/src/app/node_modules
WORKDIR /usr/src/app

# Install app
RUN npm install npm-statistic

WORKDIR /usr/src/app/node_modules/npm-statistic

# Install app dependencies
RUN npm install

CMD [ "npm", "test" ]