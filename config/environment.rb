# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '587',
  :authentication => :plain,
  :user_name => ENV['app55760673@heroku.com'],
  :password => ENV['urfijova2127'],
  :domain => 'samtymrailsproject.herokuapp.com',
  :enable_starttls_auto => true
}