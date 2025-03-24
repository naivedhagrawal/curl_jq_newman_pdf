FROM node:alpine

ENV DEBIAN_FRONTEND=noninteractive

RUN apk update && \
    apk add --no-cache curl jq wkhtmltopdf && \
    npm install -g newman && \
    rm -rf /var/cache/apk/*

RUN curl --version && \
    jq --version && \
    newman --version && \
    wkhtmltopdf --version

CMD ["bash"]
