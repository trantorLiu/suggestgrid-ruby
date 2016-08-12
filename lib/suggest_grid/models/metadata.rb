# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class Metadata

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    def initialize(id = nil)
      @id = id

    end

    # Creates JSON of the curent object
    def to_json(options = {})
      hash = key_map
      hash.to_json(options)
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

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['id'] = id
      hash
    end
  end
end
