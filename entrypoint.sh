#!/bin/bash

bundle exec rails db:migrate 2>/dev/null || bundle exec rails db:create db:migrate db:seed

# Remove a potentially pre-existing server.pid for Rails.
rm -f tmp/pids/server.pid
rm -f tmp/sockets/listen.sock

# Run the Rails server
bundle exec rails server -b 0.0.0.0 -p 3000