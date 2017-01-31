FROM ubuntu:16.04
MAINTAINER Peter Magnusson "peter.k.magnusson@afconsult.com"

ENV DEBIAN_FRONTEND noninteractive


# Update your packages and install the ones that are needed
RUN apt-get --quiet --yes update && \
    apt-get --quiet --yes install \
        curl \
        build-essential \
        libicu-dev \
        git \
        python-dev \
        python-pip \
        python-virtualenv && \
        apt-get clean && \
        rm -rf /var/lib/apt/lists
