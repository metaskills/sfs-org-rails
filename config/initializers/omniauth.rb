Rails.application.config.middleware.use OmniAuth::Builder do
  provider :meetup,
    Rails.application.credentials.meetup[:key],
    Rails.application.credentials.meetup[:secret]
end
