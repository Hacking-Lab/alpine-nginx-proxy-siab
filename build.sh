#!/bin/bash
docker build --no-cache -t hackinglab/alpine-nginx-proxy-siab:3.2.0 -t hackinglab/alpine-nginx-proxy-siab:3.2 -t hackinglab/alpine-nginx-proxy-siab:latest -f Dockerfile .

docker push hackinglab/alpine-nginx-proxy-siab
docker push hackinglab/alpine-nginx-proxy-siab:3.2
docker push hackinglab/alpine-nginx-proxy-siab:3.2.0
