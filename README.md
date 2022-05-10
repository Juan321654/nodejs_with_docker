# How to use the build command in Docker

convention to name the container, not required

`docker build -t username/name_of_project .`

`docker run username/name_of_project`

# Container Port forwarding

`docker` `run` `-p` `<host route (the one being accessed by us)>` `:` `<container route>` `<img id/tag>`
Ports do not have to be identical `5000:8080`, or `3000:8080` etc 
`8080` in this case is the port we specified in the `node express app`
if we make the port `5000:8080` then when we go to our browser we would use `localhost:5000`

`docker run -p 5000:8080 username/name_of_project`

<img src="/gitImages/Screenshot_2.png">
<img src="/gitImages/Screenshot_1.png">

# See files and folder within a container

`docker run -it username/name_of_project sh`

notice that the current working directory is `/usr/app` because that's what we specified in the Dockerfile, to prevent conflicts on filenames in the root directory

<img src="/gitImages/Screenshot_4.png">
<img src="/gitImages/Screenshot_3.png">