FROM node:7.6.0

RUN useradd --user-group --create-home --shell /bin/false app 
#&&\
#  npm install --global npm@3.7.5

ENV HOME=/home/app

USER app
WORKDIR $HOME/chat
