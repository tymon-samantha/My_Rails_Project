# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '587',
  :authentication => :plain,
  :user_name => ENV['tymon.samantha@gmail.com'],
  :password => ENV['Zhivago86'],
  :domain => 'heroku.com',
  :enable_starttls_auto => true
}