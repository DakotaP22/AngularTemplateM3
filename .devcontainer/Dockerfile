# Use the official Node.js image as the base image
FROM node:22-alpine

# Set the working directory inside the container
WORKDIR /angular-18

# Install git and other necessary tools
RUN apk add --no-cache git curl
RUN npm install -g @angular/cli@18