FROM node:4.2.2
COPY . /src
RUN cd /src && npm install
CMD node /src/index.js