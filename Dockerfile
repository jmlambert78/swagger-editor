FROM node:4
#FROM    mhart/alpine-node

RUN     npm install -g http-server

WORKDIR /editor
RUN wget https://github.com/swagger-api/swagger-editor/archive/v2.9.7.tar.gz
RUN tar zxvf v2.9.7.tar.gz -C /editor

# The default port of the application
EXPOSE  8080

CMD ["http-server", "--cors", "--port=8080", "/editor"]
