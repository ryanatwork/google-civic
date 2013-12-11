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

    # Looks up information relevant to a voter based on the voter's registered address.
    #
    # @param election_id [Integer] The id of the election found in .elections
    # @param address [String] The address to search on.
    # @param options [Hash] A customizable set of options.
    # @return [Hashie::Mash] A list of current information around the voter
    # @see https://developers.google.com/civic-information/docs/us_v1/elections/voterInfoQuery
    # @example List information around the voter
    #   GoogleCivic.voter_info(200, '1263 Pacific Ave. Kansas City KS')
    def voter_info(election_id, address, options={})
      post("voterinfo/#{election_id}/lookup", options.merge({address: address}))
    end

    # Looks up political geography and (optionally) representative information based on an address
    #
    # @param address [String] The address to search on.
    # @param options [Hash] A customizable set of options.
    # @return [Hashie::Mash] A list of current information about representatives
    # @see https://developers.google.com/civic-information/docs/us_v1/representatives/representativeInfoQuery
    # @example List information about the representatives
    #   GoogleCivic.representative_info('1263 Pacific Ave. Kansas City KS')
    def representative_info(address, options={})
      post("representatives/lookup", options.merge({address: address}))
    end

  end
end
