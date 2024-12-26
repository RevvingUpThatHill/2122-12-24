# Docker is a containerization tool.
A Container is a simulation of a linux OS that reuses the host machine's linux OS.
It works by restricting access to files to only a "slice" that the container is
permitted to access. EG: A container doesn't have access to all of the files on the
host machine.
# Docker provides with the ability to start a container based off of an image.
EG: We can create an "Ubuntu" container based off of the "Ubuntu" image,
or, "postgres", "node", "openjdk", etc.
We can think of the relationship between images and containers being effectively
the same as classes vs objects: an image is a template for a container.
# Docker run
Docker pull (some image from the container registry, "Dockerhub")
Docker run (the image that was pulled from "Dockerhub" as a new Docker container)
-e (environment variables)
-p opening a port
-it (opens an interactive terminal when ran)
-d (run in background)
# Docker commands
To set an env variable on linux:
export varname=variable
To view the current value of an env variable:
echo ${variablename}
To view all containers (stopped and running)
docker ps -a
To build a container with a tag
docker build . -t name
To run my API container:
docker run -e demo_db_url=${demo_db_url} -e demo_db_username=${demo_db_username} -e demo_db_password=${demo_db_password} -p 8080:8080 -d flightapi
To kill a running container:
docker kill containername
To view container logs:
docker logs containername
To remove a stopped container
docker rm
To remove unused containers
docker container prune
# Dockerization
Ideally, we should be running our applications (such as our frontend or backend server)
inside of a Docker container. We can create a custom Docker image that contains all the
necessary installs (mvn, java, node) as well as our project code, and just run the container on startup.
# Dockerfile
A "Dockerfile" is a special file which is a script that builds a docker image.
It always starts with a "from (image)" command
    - From ubuntu
    - From flightapi
    - From scratch
Some other common commands:
    - RUN (run some bash command)
    - COPY (to copy files from the host machine to the image)
    - ENTRYPOINT (the command that's run when the container starts up)