```
docker build -f Dockerfile . -t template/docker-template:2
docker tag template/docker-template:2 asherkim39/docker-template:2
docker login
docker push asherkim39/docker-template:2
```

```
docker pull asherkim39/docker-template:2
docker run -p 4173:4173 -d asherkim39/docker-template:2
```
