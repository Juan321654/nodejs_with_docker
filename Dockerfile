# node can be added withoput "alpine" but the alpine word makes it so 
# that only node is installed without extra packages like git etc.
# basically the bare minimum to get nodejs working
# FROM node
FROM node:alpine

# WORKDIR is used to set the working directory of the container
# this way it is not with the virtual filesystem
# Linux comes with many folders like bin etc lib srv home media usr
# so the safest place to put our code is in the usr/app folder
WORKDIR /usr/app

# npm install (package.json) will only run if there are changes to it
# this way it saves a cache version of the container and it wont
# install all packages every time there is a change to the other files
COPY ./package.json ./
RUN npm install 
# now that a cache version of the container is created, when we do "docker run"
# it will use the cache version and not install all packages again

# now we can do changes to our index.js and other files and the 'npm install' will only run
# if we add other dependencies to it or any changes to the package.json
COPY ./ ./


CMD ["npm", "start"]