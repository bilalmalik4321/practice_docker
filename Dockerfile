# run this node image
FROM node:7

# create working directory on the newly running image
WORKDIR /practice_docker

# copy contents from current local directory into working newly made directory in image
COPY package.json /practice_docker

RUN npm i

COPY . /practice_docker

EXPOSE 80

CMD ["npm","start"]
