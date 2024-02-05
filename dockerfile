# Use an official Node.js runtime as a parent image
FROM node:21.6.1

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application source code to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run your Node.js application
CMD [ "node", "app.js" ]
