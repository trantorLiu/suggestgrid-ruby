# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class Action
    # The type that the action belongs to.
    # @return [String]
    attr_accessor :type

    # The user id of the performer of the action.
    # @return [String]
    attr_accessor :user_id

    # The item id of the item the action is performed on.
    # @return [String]
    attr_accessor :item_id

    # The optional rating, if the type is explicit.
    # @return [Float]
    attr_accessor :rating

    def initialize(type = nil,
                   user_id = nil,
                   item_id = nil,
                   rating = nil)
      @type = type
      @user_id = user_id
      @item_id = item_id
      @rating = rating

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
        user_id = hash["user_id"]
        item_id = hash["item_id"]
        rating = hash["rating"]
        # Create object from extracted values
        Action.new(type,
                   user_id,
                   item_id,
                   rating)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['type'] = type
      hash['user_id'] = user_id
      hash['item_id'] = item_id
      hash['rating'] = rating
      hash
    end
  end
end
