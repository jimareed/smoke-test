FROM node
ADD src /src
RUN cd /src; npm install
RUN npm install -g nightwatch
EXPOSE 8080
CMD ["node", "/src/start.js"]
