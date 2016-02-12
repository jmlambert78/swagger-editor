FROM node:4
#FROM    mhart/alpine-node

RUN     npm install -g http-server

WORKDIR /editor
RUN wget https://github.com/swagger-api/swagger-editor/releases/download/v2.9.7/swagger-editor.zip | unzip
#RUN ls
#RUN tar -xvz v2.9.8.tar.gz -C /editor

# The default port of the application
EXPOSE  8080

CMD ["http-server", "--cors", "--port=8080", "/editor"]
