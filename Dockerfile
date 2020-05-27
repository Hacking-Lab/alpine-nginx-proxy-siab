FROM hackinglab/alpine-siab:3.1.1 AS siab
FROM hackinglab/alpine-nginx-proxy:3.1.1 AS base

LABEL maintainer="Stephan Hauser <stephan.hauser@compass-security.com>"

# Copy SIAB
COPY --from=siab /bin/shellinaboxd /bin/
COPY --from=siab /etc/cont-init.d/11-add-siab-user /etc/cont-init.d/
COPY --from=siab /etc/services.d/siab/ /etc/services.d/siab/
COPY --from=siab /etc/shellinabox/ /etc/shellinabox/

# Setup SIAB defaults
ENV SIAB_USERCSS="Normal:+/etc/shellinabox/options-enabled/00_White-On-Black.css,Reverse:-/etc/shellinabox/options-enabled/00+Black-on-White.css;Colors:+/etc/shellinabox/options-enabled/01+Color-Terminal.css,Monochrome:-/etc/shellinabox/options-enabled/01_Monochrome.css" \
  SIAB_PORT=4200 \
  SIAB_ADDUSER=true \
  SIAB_USER=shellinabox \
  SIAB_GROUP=shellinabox \
  SIAB_SHELL=/bin/bash \
  SIAB_HOME=/home/siab \
  SIAB_SUDO=false \
  SIAB_SSL=true \
  SIAB_SERVICE=/:LOGIN \
  SIAB_PKGS=none \
  SIAB_SCRIPT=none

RUN apk add --update bash openssl curl sudo && \
	rm -rf /var/cache/apk/* && \
	adduser -D -H -h /home/shellinabox shellinabox && \
	mkdir /var/lib/shellinabox && \
	chmod +s /bin/su

# Copy local configuration
ADD root /

