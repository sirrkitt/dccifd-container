FROM alpine:3.12
LABEL maintainer="Jacob Lemus Peschel <jacob@tlacuache.us>"
ENV V=2.3.167

COPY entrypoint.sh /entrypoint.sh
RUN apk update --no-cache && apk add -U --no-cache dcc-dccifd && chmod +x /entrypoint.sh

VOLUME ["/socket", "/data"]

ENTRYPOINT ["/entrypoint.sh"]
