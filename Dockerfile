FROM openjdk:8-alpine

ENV JELASTIC_CLI_MD5 2f7818027d121f6caa68068e9cf98a97

RUN apk --no-cache --update add curl bash \
 && curl -sSL ftp://ftp.jelastic.com/pub/cli/jelastic-cli-installer.sh | sh

# Perform md5 check of downloaded jelastic-cli.jar
RUN cd /root \
 && echo "$JELASTIC_CLI_MD5  jelastic-cli.jar" | md5sum -c

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]