FROM jjmerelo/alpine-raku:latest
LABEL version="1.0.3" maintainer="JJ Merelo <jjmerelo@GMail.com>"

USER root
RUN mkdir /test
VOLUME /test
WORKDIR /test
ADD META6.json .
USER raku

#Preinstall
RUN zef install --deps-only .

ENTRYPOINT raku -v && zef test .
