Devise.setup do |config|
  config.secret_key = ENV.fetch('DEVISE_SECRET_KEY')

  # ==> Mailer Configuration
  config.mailer_sender = "jared@jaredbeck.com"

  # ==> ORM configuration
  require 'devise/orm/active_record'

  # ==> Configuration for any authentication mechanism
  config.case_insensitive_keys = [ :email ]

  # Configure which authentication keys should have whitespace stripped.
  config.strip_whitespace_keys = [ :email ]

  # ==> Configuration for :database_authenticatable
  config.stretches = Rails.env.test? ? 1 : 10

  # ==> Configuration for :recoverable
  config.reset_password_within = 2.hours

  # ==> Navigation configuration
  config.sign_out_via = :delete
end
