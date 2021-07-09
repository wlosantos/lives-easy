source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'rails', '~> 6.1.4'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'bootsnap', '>= 1.4.4', require: false

gem 'devise_token_auth', github: 'lynndylanhurley/devise_token_auth', branch: 'master'
# gem 'rack-cors'

group :development, :test do
  gem 'pry-byebug'
  gem 'awesome_print'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'spring'
end
