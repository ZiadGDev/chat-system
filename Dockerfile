FROM ruby:2.7.0
RUN apt-get update -qq && apt-get install -qq -y build-essential default-mysql-client
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
EXPOSE 3000