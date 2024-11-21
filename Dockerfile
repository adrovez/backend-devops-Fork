FROM node:22 AS build

# Set the working directory
WORKDIR /usr/app

# Copy package files and install dependencies
COPY package.json ./
RUN npm ci 

# Copy the rest of the application code
#COPY . .
COPY node_modules ./node_modules
COPY dist ./dist

RUN npm run build

# Expose the application port
EXPOSE 3000

# Start the application
CMD ["node", "dist/index.js"]