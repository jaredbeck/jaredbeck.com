# Load .env file into ENV hash
# https://github.com/bkeepers/dotenv
require 'dotenv'
Dotenv.load

require File.expand_path('../boot', __FILE__)

require 'rails/all'

# If you have a Gemfile, require the gems listed there, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env) if defined?(Bundler)

module Jaredbeck
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.filter_parameters += [:password]

    # Asset Pipeline
    config.assets.enabled = true
  end
end
