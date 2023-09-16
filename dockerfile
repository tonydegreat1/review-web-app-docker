### Using nodejs base image
FROM node:14

### Definning Working Directory
WORKDIR /app

### Using the root user to execute the container image
USER root

### Copying the nodejs dependency file (source is your local, while the destination is the container, you can also use '.' as the destination)
COPY package.json /app/

### Installing npm for nodejs
RUN npm install

### Copying all application files to the work directory
COPY . /app/

### Exposing port number
EXPOSE 80

### Execution of the Web application with the executable file
CMD [ "node", "/app/server.js" ]
