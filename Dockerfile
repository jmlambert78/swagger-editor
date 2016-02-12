FROM    mhart/alpine-node

RUN     npm install -g http-server

WORKDIR /editor
RUN wget https://github.com/swagger-api/swagger-editor/releases/download/v2.9.8/swagger-editor.zip
RUN unzip swagger-editor.zip

# The default port of the application
EXPOSE  8080

CMD ["http-server", "--cors", "--port=8080", "/editor"]
