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

    def initialize(types = nil,
                   additional_properties = {})
      @types = types

      # Add additional model properties to the instance
      additional_properties.each {|name, value| instance_variable_set("@#{name}", value)}
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        types = hash["types"]

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        GetTypesResponse.new(types,
                             hash)
      end
    end
  end
end
