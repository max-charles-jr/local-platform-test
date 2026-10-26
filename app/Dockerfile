FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package files from the host's app directory into the container
# Since context is ".", the files are at ./app/package.json
COPY app/package.json app/package-lock.json* ./

# Install dependencies (ignoring scripts if you have tricky local NODE_OPTIONS)
RUN npm install --dev --ignore-scripts

# Copy the rest of your application code
COPY app/ .

# Expose port and start the application
EXPOSE 3000
CMD ["npm", "run", "dev"]
