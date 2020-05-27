# Example application for NGINX with SIAB
This is an example use of the NGINX with SIAB image for the Hacking-Lab CTF platform. This application provides its own NodeJS application listening on port 8000, exposed via an nginx reverse proxy on `/app/`.

## Building & testing
To build and test, follow these instructions:

- Open a command line in this directory
- Run `docker-compose up --build`
- Go to [the entry page](http://localhost:8000) (note: if you're already running an application on port 8000, you can change it in `docker-compose.yml`)
