# Menggunakan Node.js 14 sebagai base image
FROM node:14-alpine

RUN apk add --no-cache python2 g++ make

# Mengatur working directory ke /app
WORKDIR /app

# Copy semua source code ke working directory
COPY . .

# Mengatur ENV untuk production dan database host
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Install production dependencies dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Expose port 8080
EXPOSE 8080

# Start the server with the npm start command
CMD ["npm", "start"]