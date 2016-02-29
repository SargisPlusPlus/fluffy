git clone https://github.com/SargisPlusPlus/fluffy.git fluffy

cd fluffy

source "/usr/local/share/chruby/chruby.sh"
chruby ruby

gem install bundler

bundle install

bundle exec rake db:migrate

if [[ $? != 0 ]]; then
  echo
  echo "== Failed to migrate. Running setup first."
  echo
  bundle exec rake db:setup && \
  bundle exec rake db:migrate
fi

bundle exec rails server Puma -b 0.0.0.0
