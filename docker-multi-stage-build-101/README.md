# Docker Multi-stage 101
Introduction to Docker Multi-stage Builds

So for any of the apps, you just need to run the following commands

```
docker build -t helloapp .
docker run -d -p 8080:80 --name myapp helloapp
```