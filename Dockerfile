# Use an official Ruby runtime as a parent image
FROM ruby:2.6.0-slim

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

# Set the working directory to /usr/src/app
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed gems specified in Gemfile
RUN bundle install

# Configure Sinatra into production mode, causing it to listen on all available interfaces
ENV APP_ENV production

# Make port 4567 available to the world outside this container
EXPOSE 4567

# Run app.rb when the container launches
CMD ["bundle", "exec", "ruby", "app.rb"]
