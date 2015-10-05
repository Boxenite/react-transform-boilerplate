FROM node:latest

RUN mkdir /opt/myapp
WORKDIR /opt/myapp
ADD package.json /opt/myapp/package.json
ENV NODE_PATH /opt/myapp/node_modules
RUN npm install

ADD . /opt/myapp

EXPOSE 3000
CMD ["npm", "start"]
