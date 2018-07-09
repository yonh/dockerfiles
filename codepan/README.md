# image yonh/codepan

### get image, build or pull
```bash
# build
git clone https://github.com/yonh/dockerfiles
cd dockerfiles
git checkout codepan
cd codepan
docker build -t yonh/codepan

# docker pull
docker pull yonh/codepan
```

### run
```bash
# docker
docker run -d --name codepan -p 4000:4000 yonh/codepan
# docker-compose
docker-compose up -d
```

### access with port 4000
`http://localhost:4000`


