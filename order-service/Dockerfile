# Pull Nodejs image from docker hub
FROM node:18-alpine
# Set working directory to /app in container
WORKDIR /app
# Copy all files to /app in container
ADD . /app
# Set ENV
ENV NODE_ENV=production
# Install dependencies
RUN npm ci
# Expose port 3000
EXPOSE 3000
# Run npm start when start container
CMD ["npm", "start"]