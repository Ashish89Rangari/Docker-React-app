# Docker-ReactJS-app
Docker-ReactJS-app deployed on NGINX web-server.

# Application 
![image](https://github.com/user-attachments/assets/f92d083d-ea6f-4db9-a14b-11138a1229da)




# Requirements and Point to noted 

1.	ReactJS is a framework which is used to develop frontend of application (UI)

2.	We will use NODE software to build and run Angular & React application.

3.	ReactJS app libraries will be configured in "package.json" file

4.	To download libraries configured we will use 'npm install' command.

5.	To build ReactJS application we will use below command

			npm run build --prod

Note: When we run above command 'build' folder will be generated for deployment.

=> To deploy angular application, we will use NGINX webserver.


# Docker-ReactJS-app
  

Clone git repo

```bash
$ git clone https://github.com/Ashish89Rangari/Docker-React-app.git
```

Go inside the project folder

```bash
$ cd Docker-React-app
```
Build the image using the following command

```bash
$ docker build -t react-app .
```
Run the Docker container using the command shown below.

```bash
$ docker run -d -p 80:80 react-app  
```
To list Docker images and container using the command shown below.

```bash
$ docker images 
$ docker ps 
```
To Push docker image in Dockerhub first tag it , if tagged push directly to Dockerhub.

```bash
$ docker tag react-app:latest ashishr99/docker-react-app:latest
$ docker push ashishr99/docker-react-app:latest
```

# For windows
The application will be accessible at http://localhost:80

# For Linux
The application will be accessible at http://public-ip:80
