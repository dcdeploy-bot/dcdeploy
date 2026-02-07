# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package.json ./

# Install dependencies (none, but keeps it realistic)
RUN npm install

# Copy source code
COPY server.js ./

# Expose port
EXPOSE 3000

# Start the server
CMD ["npm", "start"]
