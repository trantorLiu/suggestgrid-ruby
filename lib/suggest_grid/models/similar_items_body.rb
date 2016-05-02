# This file was automatically generated for SuggestGrid by APIMATIC v2.0 on 05/02/2016

module SuggestGrid
  class SimilarItemsBody
    # TODO: Write general description for this method
    # @return [Numeric]
    attr_accessor :size

    # These ids will not be included in the response.
    # @return [Array<String>]
    attr_accessor :except

    def method_missing(method_name)
      puts "there's no method called '#{method_name}'"
    end

    # Creates JSON of the curent object
    def to_json
      hash = key_map
      hash.to_json
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['size'] = size
      hash['except'] = except
      hash
    end
  end
end
