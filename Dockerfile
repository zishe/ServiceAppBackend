FROM ruby:2.6.0

# Make nodejs and yarn as dependencies
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -

# Install dependencies and perform clean-up
RUN apt-get update -qq && apt-get install -y \
   build-essential \
   nodejs \
   yarn \
 && apt-get -q clean \
 && rm -rf /var/lib/apt/lists

WORKDIR /usr/src/app
ENV RAILS_ENV development

# Installing Ruby dependencies
COPY Gemfile* ./
RUN gem install bundler
RUN bundle install --jobs 20 --retry 5

ENTRYPOINT ["bundle", "exec"]

CMD ["rails", "server", "-b", "0.0.0.0", "-p", "3000"]
