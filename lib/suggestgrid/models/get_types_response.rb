# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class GetTypesResponse < BaseModel
    # The list of type names
    # @return [List of String]
    attr_accessor :types

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["types"] = "types"
      end
      @_hash
    end

    def initialize(types = nil)
      @types = types
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      types = hash['types']

      # Create object from extracted values
      GetTypesResponse.new(types)
    end
  end
end
