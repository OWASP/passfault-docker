# OWASP Passfault: Do Passwords Better!

This image contains the passfault password analysis JSON service for enforcing a new kind of password policy.  This image is intended to be built on to add you own custom wordlists.

## Getting OWASP Passfault in Docker
This fetches the passfault docker image
`docker pull ccaamm/passfault`

This creates and starts a passfault docker instance

`docker run -d ccaamm/passfault`

You can verify it is up and running at https://{container-ip}:8443
Alternatively you can expose the SSL port as follows:

`docker run -d -p 8443:8443 ccaamm/passfault`

(technically you could also expose the clear-text port 8080, but these are passwords!)

## Make Passfault Your Own

You want to add your own wordlists? Or maybe turn off some of the built-in wordlists? Here is a docker template to extend
this image: https://github.com/c-a-m/passfault-docker-template