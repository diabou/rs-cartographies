FROM node:6

##cmd => you may need administrator privileges
RUN npm install -g bower && \
    npm install -g polymer-cli &&\
    mkdir dataviz

##cmd => cd dataviz
WORKDIR dataviz

COPY bower.json index.html manifest.json polymer.json ./

##cmd => same without --allow-root option
RUN bower --allow-root install &&\
    cd bower_components/sigma.js &&\
    npm install &&\
    npm run build

COPY src src

##cmd => polymer serve -p 8081
CMD ["bash", "-c", "polymer serve -H 0.0.0.0 -p 8081"]
