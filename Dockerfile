# Use official Node.js image
FROM node:22

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json .
RUN npm install

# Copy entire project
COPY . .

# Expose port
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]
