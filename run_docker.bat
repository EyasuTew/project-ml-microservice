
docker build --tag=project-ml-microservice .
docker image ls
docker run -p 8000:80 project-ml-microservice