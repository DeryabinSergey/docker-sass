FROM alpine:3.11

RUN apk --update add npm && \
    npm install -g sass && \
    rm -rf /var/cache/apk/*

ENTRYPOINT [ "sass" ]