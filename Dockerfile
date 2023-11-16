FROM node:18-alpine3.18

# Create app directory
WORKDIR / src/

# copy app to the workdir
COPY . .

# Install app dependencies
RUN npm install 

# Expose port 3000
EXPOSE 3000

# Set Environnement Variables
ENV PORT=3000

# Finaly, we tell the container to run th app
# CMD [ "npm", "start" ]
CMD [ "npm", "run", "dev" ]

