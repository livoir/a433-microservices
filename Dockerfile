# Pull Nodejs image from docker hub
FROM node:14
# Set working directory to /app in container
WORKDIR /app
# Copy all files to /app in container
ADD . /app
# Set ENV
ENV NODE_ENV=production DB_HOST=item-db
# Install all project dependencies & build the app
RUN npm install --production --unsafe-perm && npm run build
# Expose port 8080
EXPOSE 8080
# Run npm start when start container
CMD ["npm", "start"]