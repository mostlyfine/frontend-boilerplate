FROM node:alpine as builder

RUN mkdir /code
WORKDIR /code

COPY package.json /code
COPY yarn.lock /code

RUN apk update && \
      apk add --no-cache tzdata openssl-dev zlib-dev libxml2-dev curl-dev make gcc libc-dev g++ && \
      yarn install && \
      rm -rf /usr/local/share/.cache/* /var/cache/* /tmp/* && \
      apk del openssl-dev zlib-dev libxml2-dev curl-dev make gcc libc-dev g++

FROM alpine as runner

RUN apk update && \
      apk add --no-cache nodejs yarn

COPY --from=builder /code /code
WORKDIR /code

COPY webpack.config.js /code
COPY .babelrc /code
CMD yarn watch
