if Rails.env.production? || Rails.env.staging?
  require 'lamby'
  require 'lamby/rack_api'

  Lamby::RackApi.class_eval do
    def response(handler)
      base64_encode = base64_encode?(handler.body)
      body = Base64.strict_encode64(handler.body) if base64_encode
      { isBase64Encoded: base64_encode,
        body: body }.compact
    end

    private

    def base64_encode?(body)
      body.encoding.name == 'ASCII-8BIT' ||
        headers['Content-Transfer-Encoding'] == 'binary' ||
        headers['X-Lamby-Base64'] == '1'
    end
  end
end
