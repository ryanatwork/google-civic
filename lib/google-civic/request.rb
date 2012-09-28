require 'multi_json'

module GoogleCivic
  module Request
    def get(path, options={})
      request(:get, path, options)
    end

    def post(path, options={})
      request(:post, path, options)
    end

    private

    def request(method, path, options)
      response = connection.send(method) do |request|
        request.url(path,  options.merge(:key => @key))
      end
      response.body
    end
  end
end
