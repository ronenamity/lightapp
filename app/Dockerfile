FROM node:8

# Create app directory
WORKDIR /opt

# Install app dependencies
COPY ../app/i* .

RUN npm install

EXPOSE 3000
CMD [ "npm", "start" ]

