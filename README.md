Debian Stretch + build environment for Asterisk

I created this docker container to speed up building a container for Asterisk.

Currently I base my Asterisk build off respoke/asterisk:latest

This contains the pre-built Asterisk
but does not run it, I do that in a separate Dockerfile
to control all the configuration.



