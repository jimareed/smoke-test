FROM selenium/node-firefox:2.47.1
RUN sudo apt-get -qq update
RUN sudo apt-get -qq install nodejs
RUN sudo apt-get -qq install nodejs-legacy
RUN sudo apt-get -qq install npm
ADD src /src
RUN cd /src; sudo npm install -g nightwatch; sudo npm install
EXPOSE 8080
CMD ["nightwatch", "--test"]
CMD ["node", "/src/start.js"]
