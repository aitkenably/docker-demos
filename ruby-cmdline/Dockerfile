FROM ruby:2.6.3

# Ensures Gemfile hasn't been 
# modified since Gemfile.lock
RUN bundle config --global frozen 1

RUN useradd --create-home example
WORKDIR /home/example
USER example 

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY example.rb .

ENTRYPOINT ["ruby", "/home/example/example.rb"]