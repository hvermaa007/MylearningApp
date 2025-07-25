FROM node:lts-alpine3.22
# Set working directory in container
WORKDIR /usr/src/app
COPY . .
RUN npm i --only=production && mkdir test
# Environment variables
ENV NODE_ENV=production
ENV PORT=3000

# Expose the application port
EXPOSE 3000
VOLUME test
RUN chown -R node:node .
USER node

# START COMMAND
CMD ["node", "index.js"]
