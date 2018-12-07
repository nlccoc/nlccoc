

FROM ruby:2.3

# Install apt based dependencies required to run Rails as 
# well as RubyGems. As the Ruby image itself is based on a 
# Debian image, we use apt-get to install those.
RUN apt-get update && apt-get install -y \ 
  build-essential \ 
  postgresql-client \
  nodejs \
  && \
  rm -rf /var/lib/apt/lists/*

# Configure the main working directory. This is the base 
# directory used in any further RUN, COPY, and ENTRYPOINT 
# commands.
RUN mkdir -p /var/app

# Copy the Gemfile as well as the Gemfile.lock and install 
# the RubyGems. This is a separate step so the dependencies 
# will be cached unless changes to one of those two files 
# are made.
#COPY Gemfileemfile.lock /var/app/
COPY . /var/app
WORKDIR /var/app

RUN gem install bundler && bundle install --jobs 20 --retry 5
# Copy the main application.

#COPY . /var/app

# Expose port 3000 to the Docker host, so we can access it 
# from the outside.
EXPOSE 3000

# The main command to run when the container starts. Also 
# tell the Rails dev server to bind to all interfaces by 
# default.
ENTRYPOINT ["bundle", "exec"]
# RUN rake db:exists && rake db:migrate || rake db:setup
CMD ["rails", "server", "-b", "0.0.0.0"]