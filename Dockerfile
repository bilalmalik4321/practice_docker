# run this node image
FROM node:7

# create working directory on the newly running image
WORKDIR /practice_docker

# copy package file from current local directory into working newly made directory in image
COPY package.json /practice_docker

# run npm install, creating lock file
RUN npm i

# copy rest of contents from current directory into image directory
COPY . /practice_docker

# expose the container to port 80, in contianer, not locally
EXPOSE 80

# run npm start to start server
CMD ["npm","start"]
