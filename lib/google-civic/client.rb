require 'google-civic/connection'
require 'google-civic/request'

module GoogleCivic
  class Client
    def initialize(options={})
      @key = options[:key]
    end

    include GoogleCivic::Connection
    include GoogleCivic::Request

    # Gets a list of elections in the API
    #
    # @return [Hashie::Mash] A list of current elections in the API
    # @see https://developers.google.com/civic-information/docs/us_v1/elections/electionQuery
    # @example List the current elections
    #   GoogleCivic.elections
    def elections(options={})
      get("elections", options)
    end

  end
end
