FROM ruby:2.7.3-alpine

RUN apk add --update  --virtual \
    runtime-deps \ 
    postgresql-client \
    build-base \
    nodejs \
    postgresql-dev \
    imagemagick \
    git \
    tzdata \
    && rm -rf /var/cache/apk/*

WORKDIR /app 
COPY . /app/

# ENV BUNDLE_PATH /gems
RUN gem install bundler
RUN bundle config set force_ruby_platform true
RUN bundle install

RUN chmod +x entrypoint.sh

ENTRYPOINT ["sh", "./entrypoint.sh"]
CMD ["s","-b","0.0.0.0"]

EXPOSE 3000