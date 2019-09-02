# golang-docker

- create your app
- create dockerfile
- build docker image with
```bash
# simple script
docker build -t your-image-name-you-want .

# another script you can run
docker build --rm -f "Dockerfile" -t your-image-name-you-want:latest .
```
- run docker image 
```bash 
docker run -p 8080:8080 your-image-name
```

- [opsional] create your docker-compose file
- [opsional] build docker-compose into images
```bash
# this will build the images
docker-compose build
```
- [opsional] run container
```bash 
docker-compose up
```
