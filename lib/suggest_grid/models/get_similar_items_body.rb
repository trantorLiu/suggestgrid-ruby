# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class GetSimilarItemsBody

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :item_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :size

    # These ids will not be included in the response.
    # @return [List of String]
    attr_accessor :except

    def initialize(type = nil,
                   item_id = nil,
                   size = nil,
                   except = nil)
      @type = type
      @item_id = item_id
      @size = size
      @except = except

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
        type = hash["type"]
        item_id = hash["item_id"]
        size = hash["size"]
        except = hash["except"]
        # Create object from extracted values
        GetSimilarItemsBody.new(type,
                                item_id,
                                size,
                                except)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['type'] = type
      hash['item_id'] = item_id
      hash['size'] = size
      hash['except'] = except
      hash
    end
  end
end
