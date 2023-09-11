# Use the Node.js 14 base image
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /app

# Copy all source code to the working directory
COPY . .

# Set environment variables for production mode and database host
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Install production dependencies and build the application
RUN npm install --production --unsafe-perm && npm run build

# Expose port 8080
EXPOSE 8080

# Start the server with the npm start command
CMD ["npm", "start"]