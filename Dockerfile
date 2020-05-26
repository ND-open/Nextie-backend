FROM ruby:2.6.5  

# RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN gem install bundler -v 2.1.4

RUN bundle install

RUN rails db:create db:migrate db:seed

CMD [ "rails", "s" ]