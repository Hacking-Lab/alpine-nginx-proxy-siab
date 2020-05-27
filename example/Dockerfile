FROM hackinglab/alpine-nginx-proxy-siab:3.1.1

RUN apk add --update nodejs && \
	rm -rf /var/cache/apk/*

ADD root /
