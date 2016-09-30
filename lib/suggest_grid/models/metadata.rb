# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class Metadata < BaseModel
    # The id of the user or the item that the metadata is associated with.
    # Id parameter is necessary for all metadata.
    # @return [String]
    attr_accessor :id

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["id"] = "id"
      end
      @hash
    end

    def initialize(id = nil)
      @id = id
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        id = hash["id"]

        # Create object from extracted values
        Metadata.new(id)
      end
    end
  end
end
