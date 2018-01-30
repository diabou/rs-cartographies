FROM node:6

RUN npm install -g bower && \
    npm install -g polymer-cli &&\
    mkdir dataviz

WORKDIR dataviz

COPY bower.json index.html manifest.json polymer.json ./

RUN bower --allow-root install &&\
    cd bower_components/sigma.js &&\
    npm install &&\
    npm run build

COPY src src

CMD bash
