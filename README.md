# passfault-docker
Goal: Do passwords better.. as a micro-service in Docker.

## Getting OWASP Passfault in Docker
This fetches and starts the passfault docker image

`docker run -d passfault`

You can verify it is up and running at https://{container-ip}:8443
Alternatively you can expose the SSL port as follows:

`docker run -d -p 8443:8443 passfault`

(technically you could also expose the clear-text port 8080, but these are passwords!)

## Make Passfault Your Own

You want to add your own wordlists? Or maybe turn on or off the built-in wordlists?  Here is a docker template to extend this image: TODO