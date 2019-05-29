FROM ruby:2.6.3

# Ensures Gemfile hasn't been 
# modified since Gemfile.lock
RUN bundle config --global frozen 1

RUN useradd --create-home info
WORKDIR /home/info
USER info 

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY info.rb .

CMD ["/home/info/info.rb"]