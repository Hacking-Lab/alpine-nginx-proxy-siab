# Alpine Linux NGINX with Shell in a Box
## Introduction
This content ist provided by a Alpine Linux nginx web server with Shell in a Box (SIAB)

## Shell in a Box
Please click on the /siab/ url
[SIAB](/siab/)

## Service Specifications
* with s6 startup handling in `/etc/cont-init.d/` and `/etc/services.d/<service>/run`
* with dynamic user creation  in `/etc/cont-init-d/10-adduser`
* with or without known passwords for root and non-root user in `/etc/cont-init-d/10-adduser`
* with `environment` based dynamic ctf flag handling in `/etc/cont-init-d/99-add-flag.sh`
* with `file` based dynamic ctf flag handling in `/etc/cont-init-d/99-add-flag.sh`
* with nginx service, started by `/etc/services.d/nginx/run`

## DocumentRoot
* /opt/www

## NGINX configuration
* /config/nginx/nginx.conf


