# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class Metadata < BaseModel
    # The id of the metadata of a user or an item.
    # @return [String]
    attr_accessor :id

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["id"] = "id"
      end
      @_hash
    end

    def initialize(id = nil)
      @id = id
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      id = hash['id']

      # Create object from extracted values
      Metadata.new(id)
    end
  end
end
