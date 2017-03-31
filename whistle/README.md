# whistle image
## build
```
docker build -t yonh/whistle .
```

## run for docker-compose
update docker-compose.yml, change ENV values  
change port mapping
```
docker-compose up -d
```

## run for docker
```
docker run -d --name whistle --restart=always -p 7788:7788 yonh/whistle
```

