
# Use an official Node.js 18 image as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./


# Install application dependencies including nodemon as a global package
RUN npm install -g nodemon
RUN npm install mysql
RUN npm install redis

# Create the directory if it doesn't exist
RUN mkdir -p /app

# Copy the rest of the application code to the working directory
COPY . .

# Define the command to run your application
ENTRYPOINT ["npm", "run", "dev"]

