# image yonh/yarn

```
docker build -t yonh/yarn
# you can also use docker pull
docker pull yonh/yarn
```

### set command alias

set your fish alias yarn
vi ~/.config/fish/config.fish

```
function yarn
        docker run -it --rm -v $PWD:/opt yonh/yarn yarn $argv
end
```

set your bash alias yarn
```
alias yarn="docker run -it --rm -v $PWD:/opt yonh/yarn yarn"
```

