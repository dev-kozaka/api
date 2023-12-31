FROM ruby:3.1

RUN mkdir /app
ENV LANG=C.UTF-8 \
    TZ=Asia/Tokyo
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN gem install bundler -v 2.3.10 && bundle install
COPY . /app

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]