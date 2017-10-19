from ruby
run apt-get update -y
run apt-get install -y build-essential libpq-dev
run apt-get install -y nodejs
run gem install rails
run mkdir lab2_1412392

COPY Gemfile* /tmp/

WORKDIR /tmp

RUN bundle install

workdir /lab2_1412392
run rm -f /lab2_1412392/tmp/pids/server.pid
EXPOSE 8080
cmd rails s -b 0.0.0.0