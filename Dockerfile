FROM debian:stretch
MAINTAINER Brian H Wilson <brian@wildsong.biz>

RUN apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
            autoconf \
            binutils-dev \
            build-essential \
            ca-certificates \
            curl \
            libcurl4-openssl-dev \
            libedit-dev \
            libgsm1-dev \
            libjansson-dev \
            libogg-dev \
            libpopt-dev \
            libresample1-dev \
            libspandsp-dev \
            libspeex-dev \
            libspeexdsp-dev \
            libsqlite3-dev \
            libsrtp0-dev \
            libssl-dev \
            libvorbis-dev \
            libxml2-dev \
            libxslt1-dev \
	    libncurses5 ncurses-bin ncurses-term \
            portaudio19-dev \
            python-pip \
	    python-setuptools \
            unixodbc-dev \
            uuid \
            uuid-dev \
            xmlstarlet \
	    && \
    apt-get purge -y --auto-remove && rm -rf /var/lib/apt/lists/*




