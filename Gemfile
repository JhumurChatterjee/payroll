source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.3"

gem "apartment", github: "PalashBera/apartment", branch: "development"
gem "bootsnap", ">= 1.4.2", require: false
gem "jbuilder", "~> 2.7"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 3.11"
gem "rails", "~> 6.0.0"
gem "sass-rails", "~> 5"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 4.0"

group :development, :test do
  gem "faker", "~> 2.1", ">= 2.1.2"
  gem "pry-rails", "~> 0.3.9"
end

group :development do
  gem "bullet", "~> 6.0", ">= 6.0.1"
  gem "letter_opener", "~> 1.7"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "rubocop", "~> 0.74.0"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  gem "webdrivers"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
