#!/bin/bash

docker run -d --name svn -p 3690:3690 -v $PWD/libs:/opt/svn/ yonh/svn

