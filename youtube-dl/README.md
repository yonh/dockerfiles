# image yonh/youtube-dl
youtube-dl image

```
docker build -t yonh/youtube-dl .
# you can also use docker pull
docker pull yonh/youtube-dl
```



### set command alias

set your fish alias dl
vi ~/.config/fish/config.fish

```
function dl
        docker run -it --rm -v $PWD:/opt yonh/youtube-dl youtube-dl $argv
end
```

set your bash alias dl
```
alias dl="docker run -it --rm -v $PWD:/opt yonh/youtube-dl youtube-dl "
```



### use 

and then you can command dl, e.g.

```
dl -f '(bestvideo+bestaudio/best)[protocol^=http]' 'https://www.youtube.com/watch?v=n6XfnXOkffg'
```
