# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class GetTypeResponse < BaseModel
    # Rating type of the type that is either implicit or explicit.
    # @return [String]
    attr_accessor :rating

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["rating"] = "rating"
      end
      @hash
    end

    def initialize(rating = nil,
                   additional_properties = {})
      @rating = rating

      # Add additional model properties to the instance
      additional_properties.each {|name, value| instance_variable_set("@#{name}", value)}
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        rating = hash['rating']

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        GetTypeResponse.new(rating,
                            hash)
      end
    end
  end
end
