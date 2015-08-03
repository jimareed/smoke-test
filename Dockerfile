FROM selenium/node-firefox:2.47.1
ADD src /src
RUN cd /src; npm install -g nightwatch
EXPOSE 4444
CMD ["nightwatch", "--test"]