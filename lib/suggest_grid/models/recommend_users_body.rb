# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class RecommendUsersBody

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :item_id

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :item_ids

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :filter

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :size

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :similar_user_id

    # These ids will not be included in the response.
    # @return [List of String]
    attr_accessor :except

    def initialize(type = nil,
                   item_id = nil,
                   item_ids = nil,
                   filter = nil,
                   size = nil,
                   similar_user_id = nil,
                   except = nil)
      @type = type
      @item_id = item_id
      @item_ids = item_ids
      @filter = filter
      @size = size
      @similar_user_id = similar_user_id
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
        item_ids = hash["item_ids"]
        filter = hash["filter"]
        size = hash["size"]
        similar_user_id = hash["similar_user_id"]
        except = hash["except"]
        # Create object from extracted values
        RecommendUsersBody.new(type,
                               item_id,
                               item_ids,
                               filter,
                               size,
                               similar_user_id,
                               except)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['type'] = type
      hash['item_id'] = item_id
      hash['item_ids'] = item_ids
      hash['filter'] = filter
      hash['size'] = size
      hash['similar_user_id'] = similar_user_id
      hash['except'] = except
      hash
    end
  end
end
