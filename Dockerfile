FROM openjdk:8-alpine

RUN apk --no-cache --update add curl bash \
 && curl -sSL ftp://ftp.jelastic.com/pub/cli/jelastic-cli-installer.sh | sh

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]