OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :twitter, ENV["TWITTER_API_KEY"], ENV["TWITTER_API_SECRET"]
    provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET'], scope: "user:email,user:follow"
    provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET']

  end