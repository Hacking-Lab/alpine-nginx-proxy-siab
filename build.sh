#!/bin/bash
docker build --no-cache -t hackinglab/alpine-nginx-proxy-siab:3.2.0 -t hackinglab/alpine-nginx-proxy-siab:3.2 -t hackinglab/alpine-nginx-proxy-siab:latest -f Dockerfile .

