# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class MetadataInformationResponse < BaseModel
    # The number of users or items with metadata.
    # @return [Long]
    attr_accessor :count

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["count"] = "count"
      end
      @hash
    end

    def initialize(count = nil)
      @count = count
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        count = hash["count"]

        # Create object from extracted values
        MetadataInformationResponse.new(count)
      end
    end
  end
end
