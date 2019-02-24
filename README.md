# docker-build-asterisk
Asterisk 16 built on Debian Stretch

I store this image up on Docker hub, then I derive another Dockerfile
from it that uses jinja2 templates to actually configure Asterisk and
run it.

My projects were forked from the respoke/asterisk github repo so I could use
newer Debian and Asterisk versions.

This image will contain Asterisk built from source code but does not
run it, I do that in a separate Dockerfile to control all the
configuration.

## Usage

Include in a Dockerfile, like this

    FROM wildsong/asterisk

or fork the github project if you want more control

    git clone https://github.com/wildsong/docker-build-asterisk.git
    cd docker-build-asterisk
    docker build -t build-asterisk .

## Using environment variables and templates

The entrypoint of this image looks for any Jinja2 templates in `/etc/asterisk/` and
processes them, replacing variables with the environment variable of the same name.
If you use this image as the base for your own Dockerfile, you can add Jinja2
templates to the `/etc/asterisk/` directory with the file extension `.j2` and they will
be processed. See the [Official Jinja2 Template Designer Documentation][] for
details on the template syntax.

## Running

You can do this but it's pointless because the asterisk will be unconfigured.

    docker run -d --name=asterisk --net=host wildsong/build-asterisk

## Repo tags

All I have so far is the "latest".

# License

[MIT]

## The original works are here

Hmm my markdown is wrong, need to fix this. There are links in README.md, honest.

[github/asterisk]: https://github.com/asterisk/asterisk
[dockerhub/asterisk]: https://hub.docker.com/r/respoke/asterisk/
[Official Jinja2 Template Designer Documentation]: http://jinja.pocoo.org/docs/dev/templates/

## Changes for Asterisk 16.

Changed version number in Dockerfile.

Removed libjansson-dev package. It's too old.

Added '--with-jansson-bundle' in build-asterisk.sh
