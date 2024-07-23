# Use the official Node.js 16 image as base
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if exists) to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install --quiet --no-cache

# Copy the rest of the application code
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]

