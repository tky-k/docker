FROM ruby:2.6.1
# see update.sh for why all "apt-get install"s have to stay as one long line
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash - && apt-get install -y nodejs

# see http://guides.rubyonrails.org/command_line.html#rails-dbconsole
# RUN apt-get update && apt-get install -y mysql-client --no-install-recommends && rm -rf /var/lib/apt/lists/*

# ENV RAILS_VERSION 5.2.3

# RUN gem install rails --version "$RAILS_VERSION"
COPY docker_sample_rails /var/docker_sample_rails
WORKDIR /var/docker_sample_rails
RUN gem update bundler
RUN bundle install
#RUN bundle exec rails db:create
#RUN bundle exec rails db:migrate
# EXPOSE 3000
# ENTRYPOINT [ "bundle" "exec" "rails" ]
# CMD [ "bundle", "exec", "rails", "s", "-b", "0.0.0.0" ]
# CMD bundle exec rails s