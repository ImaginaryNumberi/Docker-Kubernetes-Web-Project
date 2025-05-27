#!/bin/bash

docker run -d --name movie-springboot-container1.0 --network moviesq-network -p 6795:6795 imaginaryi/moviesq-springboot-java11:1.0

