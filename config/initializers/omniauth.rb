Rails.application.config.middleware.use OmniAuth::Builder do
  provider :meetup,
    ENV['MEETUP_KEY'] || Rails.application.credentials.meetup[:key],
    ENV['MEETUP_SECRET'] || Rails.application.credentials.meetup[:secret]
end
