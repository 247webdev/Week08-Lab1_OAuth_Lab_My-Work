# still get `block in <top (required)>': undefined method `provide' error in terminal with this commented out or not
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET'] 
end