Devise.setup do |config|
  config.mailer_sender = "jared@jaredbeck.com"
  require 'devise/orm/active_record'
  config.case_insensitive_keys = [ :email ]
  config.strip_whitespace_keys = [ :email ]
  config.stretches = Rails.env.test? ? 1 : 10
  config.reset_password_within = 2.hours
  config.sign_out_via = :delete
end
