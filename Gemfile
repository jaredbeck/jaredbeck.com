source 'https://rubygems.org'
ruby '2.1.5'

gem 'rails', '4.2.0.beta2'

gem 'bluecloth' # markdown
gem 'devise'
gem 'jquery-rails'
gem 'pg'
gem 'slim'
gem 'thin'
gem 'dotenv'

group :production do
  # https://devcenter.heroku.com/articles/rails-integration-gems
  gem 'rails_12factor'
end

group :development, :test do
  gem 'factory_girl'
  gem 'rspec-rails'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails'
  gem 'sass-rails', '5.0.0.beta1'
  gem 'uglifier'
end
