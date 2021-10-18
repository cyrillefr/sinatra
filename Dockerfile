FROM ruby:2.6.8-buster

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler:2.0.2
RUN bundle install

COPY . .

EXPOSE 4567

CMD ["rackup", "-p", "4567", "-o", "0.0.0.0"]
