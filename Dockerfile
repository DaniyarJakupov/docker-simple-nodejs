# Use an existing docker image as a base
FROM node:alpine

# Create a dir for the app
WORKDIR /usr/app

# Copy package.json to usr/app folder inside docker image
COPY package.json .

# Install dependencies
RUN npm install

# Copy index.js to usr/app folder inside docker image
COPY index.js .

# Tell the image what to do when it starts as a container
# a.k.a Default command
CMD ["npm", "start"]