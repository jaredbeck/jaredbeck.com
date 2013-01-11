source 'http://rubygems.org'

gem 'rails', '~> 3.1.1'
gem 'jquery-rails'
gem 'haml', '~> 3.1.3'
gem 'slim'
gem 'bluecloth' # markdown
gem 'devise', '~> 1.4.9'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'haml-rails'
  gem 'sqlite3'
  gem 'sqlite3-ruby', :require => 'sqlite3'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
