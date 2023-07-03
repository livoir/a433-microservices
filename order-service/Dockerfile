# Pull Nodejs image from docker hub
FROM node:18-alpine
# install bash
RUN apk add --no-cache bash
# install wait-for-it.sh
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
# give execute permission on wait-for-it.sh
RUN chmod +x /bin/wait-for-it.sh
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