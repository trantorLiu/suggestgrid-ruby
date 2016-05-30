# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ) on 05/30/2016

module SuggestGrid
  class SimilarItemsBody

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :size

    # These ids will not be included in the response.
    # @return [List of String]
    attr_accessor :except

    def initialize(size = nil,
                   except = nil)
      @size = size
      @except = except

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
        size = hash["size"]
        except = hash["except"]
        # Create object from extracted values
        SimilarItemsBody.new(size,
                             except)
      end
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
