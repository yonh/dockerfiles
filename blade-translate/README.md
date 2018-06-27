# image yonh/blade-translate
blade-translate image

```
docker build -t yonh/blade-translate .
# you can also use docker pull
docker pull yonh/blade-translate
```



### set command alias

set your fish alias function
vi ~/.config/fish/config.fish

```
function tr
        docker run -it --rm yonh/blade-translate bt $argv
end
```

set your bash alias function
```
alias tr="docker run -it --rm yonh/blade-translate bt"
```



### use 

and then you can command thc, e.g.

```
tr
tr I am a stupid man
```
