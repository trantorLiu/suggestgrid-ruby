# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class GetTypesResponse < BaseModel
    # The list of type names
    # @return [List of String]
    attr_accessor :types

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["types"] = "types"
      end
      @hash
    end

    def initialize(types = nil)
      @types = types
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        types = hash["types"]

        # Create object from extracted values
        GetTypesResponse.new(types)
      end
    end
  end
end
