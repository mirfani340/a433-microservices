# Menggunakan image node versi 14 alpine
FROM node:14-alpine

# Setup working directory ke /app
WORKDIR /app

# Copy semua file ke workdir
COPY . .

# Seting ENV ke production dan setting host untuk DB
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Install depedency production
RUN yarn install --production --unsafe-perm && yarn run build

# Melakukan expose port 8080
EXPOSE 8080

# Memulai aplikasi dengan npm
CMD ["npm", "start"]