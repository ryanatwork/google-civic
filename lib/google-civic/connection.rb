require 'faraday_middleware'

module GoogleCivic
  # @private
  module Connection
    private

    def connection(json, options={})
      connection = Faraday.new(options.merge({:url => 'https://www.googleapis.com/civicinfo/us_v1/'})) do |builder|
        if json
          builder.request :json
        else
          builder.request :url_encoded
        end
        builder.use FaradayMiddleware::Mashify
        builder.use FaradayMiddleware::ParseJson
        builder.adapter  Faraday.default_adapter
      end
      connection
    end
  end
end
