# OWASP Passfault: Do Passwords Better!

This image contains the passfault password analysis JSON service for enforcing a new kind of password policy.  This image is intended to be built on to add you own custom wordlists.

## Getting OWASP Passfault in Docker
This fetches the passfault docker image
`docker pull ccaamm/passfault`

This creates and starts a passfault docker instance

`docker run -d ccaamm/passfault`

You can verify it is up and running at *https://{container-ip}:8080*

`docker run -d -p 8080:8080 ccaamm/passfault`

(technically you could also expose the clear-text port 8080, but these are passwords!)

## Make Passfault Your Own

You want to add your own wordlists? Or maybe turn off some of the built-in wordlists? This image defines the __PASSFAULT_WORDLISTS__ environment variable for you to __ADD__ your own wordlists too.  Also in that same directory is a __wordlists.properties__ that needs to be replaced or appended with configuration for the new wordlists.  The syntax for the wordlists is self-described in the default configuration file here: https://github.com/c-a-m/passfault/blob/master/wordlists/wordlists/words.properties

To simplify extending the image, here is a custom passfault docker template: https://github.com/c-a-m/passfault-docker-template
