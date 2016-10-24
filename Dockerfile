FROM node:latest-slim

MAINTAINER iCyMind <icyminnd@gmail.com>

RUN npm install --global gitbook-cli &&\
        gitbook fetch lasest &&\
        npm cache clear &&\
        rm -rf /tmp/*

ENV BOOKDIR /gitbook

VOLUME $BOOKDIR

WORKDIR $BOOKDIR

EXPOSE 4000 35729

CMD [ "gitbook", "--help" ]
