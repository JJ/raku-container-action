FROM jjmerelo/alpine-raku:latest
LABEL version="5.0.1" maintainer="JJ Merelo <jjmerelo@GMail.com>"

USER root
RUN mkdir /test
VOLUME /test
WORKDIR /test
USER raku

ENTRYPOINT raku -v && zef install --deps-only . && zef test .
