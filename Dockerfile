FROM ruby:2.7.0
RUN apt-get update -qq && apt-get install -qq -y build-essential default-mysql-client
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["bin/rails", "server", "b", "0.0.0.0"]