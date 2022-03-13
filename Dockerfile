FROM node:16

# Create app directory
RUN mkdir -p /var/www/app
WORKDIR /var/www/app

# Installing dependencies
COPY ./landing_page .
RUN npm install --quiet

# Running the app
CMD ["npm", "run", "dev"]