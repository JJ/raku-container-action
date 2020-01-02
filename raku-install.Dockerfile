FROM jjmerelo/alpine-perl6:latest
LABEL version="1.0.0" maintainer="JJ Merelo <jjmerelo@GMail.com>"

# Set up dirs

ENV PATH="/root/.rakudobrew/versions/moar-2019.11/install/bin:/root/.rakudobrew/versions/moar-2019.11/install/share/perl6/site/bin:/root/.rakudobrew/bin:${PATH}"
RUN mkdir /test
VOLUME /test
WORKDIR /test
ADD META6.json .
RUN zef install --deps-only .

# Will run this
ENTRYPOINT raku -v && zef test .
