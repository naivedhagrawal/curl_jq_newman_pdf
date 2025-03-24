FROM node:alpine

ENV DEBIAN_FRONTEND=noninteractive

RUN apk update && \
    apk add --no-cache curl jq libstdc++ && \
    apk add --no-cache --repository=http://dl-3.alpinelinux.org/alpine/edge community/ wkhtmltopdf && \
    npm install -g newman && \
    rm -rf /var/cache/apk/*

RUN curl --version && \
    jq --version && \
    newman --version && \
    wkhtmltopdf --version

CMD ["bash"]
