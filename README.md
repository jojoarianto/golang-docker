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
