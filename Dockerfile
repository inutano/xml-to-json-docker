# installing xml-to-json by cabal
#
# VERSION 0.1

# Pull base image.
FROM inutano/debian-utf8

# :)
MAINTAINER Tazro Inutano Ohta, inutano@gmail.com

# Install packages.
RUN apt-get update && \
    apt-get install -y cabal-install libcurl4-gnutls-dev && \
    rm -rf /var/lib/apt/lists/*

# Install xml-to-json
RUN cabal update && cabal install xml-to-json
ENV PATH /root/.cabal/bin:$PATH

# Define working directory.
WORKDIR /data

# Default command
CMD ["/root/.cabal/bin/xml-to-json"]
