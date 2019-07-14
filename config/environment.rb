# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['SENDGRID_USERNAME'],
  :password => END['SENDGRID_PASSWORD'],
  :port => '587',
  :address => 'smtp.sendgrid.net',
  :domain => 'heroku.com',
  :authentication => :plain,
  :enable_starttls_auto => true
}
