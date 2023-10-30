FROM ruby 2.7.4p191 (2021-07-07 revision a21a3b7d23) [x86_64-darwin22]

ARG BUNDLER_VERSION
ARG APP_PATH
ARG RAILS_VERSION

RUN apk add --no-cache --update build-base \
  linux-headers \
  git \
  postgresql-dev=~13 \
  postgresql=~13 \
  postgresql-client=~13 \
  nodejs \
  yarn \
  # Needed for nodejs / node-gyp
  python2

WORKDIR $APP_PATH

RUN gem install bundler -v $BUNDLER_VERSION

RUN gem install rails -v $RAILS_VERSION