require 'faraday_middleware'

module GoogleCivic
  # @private
  module Connection
    private

    def connection
      connection = Faraday.new(:url => 'https://www.googleapis.com/civicinfo/us_v1/') do |builder|
        builder.request :url_encoded
        builder.use FaradayMiddleware::Mashify
        builder.use FaradayMiddleware::ParseJson
        builder.adapter  Faraday.default_adapter
      end
      connection
    end
  end
end
