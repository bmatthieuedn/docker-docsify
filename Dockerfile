FROM node:8.12-alpine

RUN apk add --no-cache tini && npm install -g docsify-cli@latest

WORKDIR /docs

ENTRYPOINT ["/sbin/tini", "--"]
CMD [ "docsify", "--help" ]
