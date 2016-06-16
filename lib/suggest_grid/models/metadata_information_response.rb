# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ) on 06/16/2016

module SuggestGrid
  class MetadataInformationResponse

    # The number of users or items with metadata.
    # @return [Long]
    attr_accessor :count

    def initialize(count = nil)
      @count = count

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
        count = hash["count"]
        # Create object from extracted values
        MetadataInformationResponse.new(count)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['count'] = count
      hash
    end
  end
end
