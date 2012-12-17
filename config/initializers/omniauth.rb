Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['twitter-key'], ENV['twitter-secret']
end

