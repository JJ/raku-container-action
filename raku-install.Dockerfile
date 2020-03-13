FROM jjmerelo/alpine-raku:latest
LABEL version="1.0.1" maintainer="JJ Merelo <jjmerelo@GMail.com>"

RUN mkdir /test
VOLUME /test
WORKDIR /test
ADD META6.json .
RUN zef install --deps-only .

ENTRYPOINT raku -v && zef test .
