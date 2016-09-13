# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class GetTypesResponse < BaseModel
    # The list of type names
    # @return [List of String]
    attr_accessor :types

    # Status code of the response. It is not 2XX.
    # @return [Integer]
    attr_accessor :status

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["types"] = "types"
        @hash["status"] = "status"
      end
      @hash
    end

    def initialize(types = nil,
                   status = nil)
      @types = types
      @status = status
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        types = hash["types"]
        status = hash["status"]

        # Create object from extracted values
        GetTypesResponse.new(types,
                             status)
      end
    end
  end
end
