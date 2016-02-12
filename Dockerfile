FROM node:4
#FROM    mhart/alpine-node

RUN     npm install -g http-server

WORKDIR /editor
RUN curl -Lk https://github.com/swagger-api/swagger-editor/archive/v2.9.8.tar.gz 
RUN ls
RUN tar -xvf v2.9.8.tar.gz -C /editor

# The default port of the application
EXPOSE  8080

CMD ["http-server", "--cors", "--port=8080", "/editor"]
