FROM ruby:2.6.5-alpine

RUN apk add build-base
RUN mkdir -p /www/pos-backend
WORKDIR /www/pos-backend
COPY . .
RUN bundle install
EXPOSE 4567

ENTRYPOINT ["ruby", "web.rb", "-o", "0.0.0.0"]
