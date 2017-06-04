FROM node:7.6.0

RUN useradd --user-group --create-home --shell /bin/false app

ENV HOME=/home/app

COPY package.json npm-shrinkwrap.json $HOME/chat/
RUN chown -R app:app $HOME/*

USER app
WORKDIR $HOME/chat
RUN npm install
