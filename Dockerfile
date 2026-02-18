FROM ruby:2.7.8-slim

# Install build dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /site

# Install bundler matching the lockfile
COPY Gemfile Gemfile.lock ./
RUN gem install bundler:2.2.17 && bundle install

# Copy site files
COPY . .

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--port", "4000"]
