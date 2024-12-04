# To build the base image here we will use node
# Two stages 1- Build 2- Deployment
# From this build section our code will run in container 
# Stage 1 Build
FROM node:18.13.0 as build                

# Here workdir will take into container path /app

WORKDIR /app


# Here copy command will copy all the package json fil from Host machine to container /app directory

COPY package*.json ./

# The packages which are in package json file all should run by below command 

RUN npm install

#Here copying all remaining source code from Host machine to conatiner machine "." - present directory
#Host machine "." present directory is "project" folder
#Container machine "." present directory is "/app"

COPY . .

# Build the project with production "build" folder will be created.

RUN npm run build --prod

# Stage 2 Deployment

# to deploy the application nginx server is used as base image

FROM nginx:latest

# Copy the project from build stage in Container app directory to nginx server
# project name is angular_docker_app

COPY --from=build app/build /usr/share/nginx/html

# Nginx port number

EXPOSE 80