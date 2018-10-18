# docker-build
Debian Stretch + build environment for Asterisk 16

I store this image up on Docker hub, then I use a private Dockerfile
that uses jinja2 templates to actually configure Asterisk.

It was forked from the respoke/asterisk github repo so I could use
newer Debian and Asterisk versions.

This contains the pre-built Asterisk but does not run it, I do that in
a separate Dockerfile to control all the configuration.

## usage

Include in a Dockerfile, like this

    FROM wildsong/build

or fork the github project if you want more control

    git clone https://github.com/wildsong/docker-build.git
    cd docker-build
    docker build -t asterisk .

## using environment variables and templates

The entrypoint of this image looks for any Jinja2 templates in `/etc/asterisk/` and
processes them, replacing variables with the environment variable of the same name.
If you use this image as the base for your own Dockerfile, you can add Jinja2
templates to the `/etc/asterisk/` directory with the file extension `.j2` and they will
be processed. See the [Official Jinja2 Template Designer Documentation][] for
details on the template syntax.

## Running

This is how I do it:
docker run -d --name=asterisk --net=host asterisk

## repo tags

All I have so far is the "latest".

# License

[MIT](https://github.com/respoke/asterisk-docker/blob/master/LICENSE)

## The original works are here

[github/asterisk]: https://github.com/asterisk/asterisk
[dockerhub/asterisk]: https://hub.docker.com/r/respoke/asterisk/
[Official Jinja2 Template Designer Documentation]: http://jinja.pocoo.org/docs/dev/templates/

## Changes for Asterisk 16.

Changed version number in Dockerfile.

Removed libjansson-dev package. It's too old.

Added '--with-jansson-bundle' in build-asterisk.sh


