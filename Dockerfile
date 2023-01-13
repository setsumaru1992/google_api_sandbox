FROM ruby:3.0.2

COPY Gemfile Gemfile.lock ./
RUN bundle install