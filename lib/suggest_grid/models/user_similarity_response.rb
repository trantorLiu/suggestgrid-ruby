# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class UserSimilarityResponse

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :similarity

    def initialize(similarity = nil)
      @similarity = similarity

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
        similarity = hash["similarity"]
        # Create object from extracted values
        UserSimilarityResponse.new(similarity)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['similarity'] = similarity
      hash
    end
  end
end
