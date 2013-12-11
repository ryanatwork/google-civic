require 'multi_json'

module GoogleCivic
  module Request
    def get(path,options={})
      request(:get, path, body=nil, options)
    end

    def post(path, body, options={})
      request(:post, path, body, options)
    end

    private

    def request(method, path, body, options)
      response = connection.send(method) do |request|
        request.url(path,  options.merge(:key => @key))
        request.body = body.to_json
      end
      response.body
    end
  end
end
