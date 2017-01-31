FROM ubuntu:16.04
MAINTAINER Peter Magnusson "peter.k.magnusson@afconsult.com"

ENV DEBIAN_FRONTEND noninteractive


# Update your packages and install the ones that are needed
RUN apt-get --quiet --yes update && \
    apt-get --quiet --yes install \
        apt-utils \
        curl \
        build-essential \
        libicu-dev \
        git \
        python-dev \
        python-pip \
        python-virtualenv && \
        apt-get clean && \
        rm -rf /var/lib/apt/lists

#RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
#RUN apt-get install --yes nodejs

ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 6.9

#use nvm instead of nodejs
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash - \
    && . $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

ENV PATH $PATH:./node_modules/bin
