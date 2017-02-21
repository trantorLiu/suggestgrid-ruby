# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class TypeRequestBody < BaseModel
    # The rating type of the type. Could be "explicit" or "implicit", where "implicit" is the default.
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

    def initialize(rating = nil)
      @rating = rating
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        rating = hash["rating"]

        # Create object from extracted values
        TypeRequestBody.new(rating)
      end
    end
  end
end
