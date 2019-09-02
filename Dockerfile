FROM ruby:2.6.4-slim-buster

RUN apt-get update && apt-get install -yq \
    vim \
    build-essential \
    poppler-utils \
    libgtk-3-dev

WORKDIR /app

RUN gem install bundler
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .

CMD ["ruby", "app.rb"]