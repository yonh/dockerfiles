# shadowsocks image
## build
```
docker build -t yonh/shadowsocks .
```

## run for docker-compose
update docker-compose.yml, change ENV values  
change port mapping
```
docker-compose up -d
```

## run for docker
```
docker run -d --name shadow -p 443:443 -e ENV_PASS=12345 -e ENV_METHOD=rc4-md5 yonh/shadowsocks
```

## your client config
```
{
	"server":"your_ip",
	"server_port":443,
	"local_address":"127.0.0.1",
	"local_port":1080,
	"password":"12345",
	"timeout":300,
	"method":"rc4-md5"
}
```
