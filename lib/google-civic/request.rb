require 'multi_json'

module GoogleCivic
  module Request
    def get(path, options={})
      request(:get, path, json=false,options)
    end

    def post(path, options={})
      request(:post, path, json=true,options)
    end

    private

    def request(method, path, json,options)
      response = connection(json).send(method) do |request|
        request.url(path,  options.merge(:key => @key))
        if json
          request.body = options.to_json
        end
      end
      response.body
    end
  end
end
