# Base Image

#FROM 375543174501.dkr.ecr.us-east-1.amazonaws.com/codepipelines

FROM node:lts-alpine3.17

# Set the working Directory
WORKDIR /app

# Copy Package.json

COPY package*.json ./

# Install Dependencies

RUN npm install

# Copy source code to the container work directory

COPY . .

# Expose Port

EXPOSE 3000

# Entry for CMD 

CMD [ "node", "server.js" ]
