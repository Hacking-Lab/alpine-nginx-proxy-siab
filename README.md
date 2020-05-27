# Alpine NGINX with SIAB
## Introduction
This is a base image for the Hacking-Lab CTF system. It provides access to a web shell (featuring shell-in-a-box) as well as a custom application.

## Specifications
* with s6 startup handling
* with dynamic user creation
* with or without known passwords for root and non-root user
* with `env` based dynamic ctf flag handling
* with `file` based dynamic ctf flag handling
* serving files by nginx in `/opt/www`
* serving shell-in-a-box in `/siab/`
* serving the local application listening on `127.0.0.1:8000` in `/app/`

## Example
This is a base image, do not copy and modify it unless you are creating a new base image. Instead, base your own image on the [example application](./example/) provided with it.
