FROM jjmerelo/alpine-raku:latest
LABEL version="5.0.0" maintainer="JJ Merelo <jjmerelo@GMail.com>"

RUN mkdir /test
VOLUME /test
WORKDIR /test

ENTRYPOINT raku -v && zef install --deps-only . && zef test .
