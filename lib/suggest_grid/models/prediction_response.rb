# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ) on 05/21/2016

module SuggestGrid
  class PredictionResponse

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :prediction

    def initialize(prediction = nil)
      @prediction = prediction

    end

    def method_missing(method_name)
      puts "There is no method called '#{method_name}'."
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
        prediction = hash["prediction"]
        # Create object from extracted values
        PredictionResponse.new(prediction)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['prediction'] = prediction
      hash
    end
  end
end
