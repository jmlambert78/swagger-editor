FROM node:5.3-onbuild
RUN     npm install -g http-server
WORKDIR /editor
ADD     dist    /editor
# The default port of the application
EXPOSE  8080

CMD ["http-server", "--cors", "--port=8080", "/editor"]
