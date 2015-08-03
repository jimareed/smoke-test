FROM selenium/node-firefox:2.47.1
RUN curl -sL https://rpm.nodesource.com/setup | bash -
RUN yum install -y npm
ADD src /src
RUN cd /src; npm install -g nightwatch
EXPOSE 4444
CMD ["nightwatch", "--test"]