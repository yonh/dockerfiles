# image yonh/blade-translate
blade-translate image

```
docker build -t yonh/blade-translate
# you can also use docker pull
docker pull yonh/blade-translate
```



### set command alias

set your fish alias dl
vi ~/.config/fish/config.fish

```
function thc
        docker run -it --rm yonh/blade-translate thc $argv
end
```

set your bash alias dl
```
alias thc="docker run -it --rm yonh/blade-translate thc"
```



### use 

and then you can command thc, e.g.

```
thc
thc pig
```
