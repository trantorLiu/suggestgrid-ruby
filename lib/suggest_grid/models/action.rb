# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class Action < BaseModel
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

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["type"] = "type"
        @hash["user_id"] = "user_id"
        @hash["item_id"] = "item_id"
        @hash["rating"] = "rating"
      end
      @hash
    end

    def initialize(type = nil,
                   user_id = nil,
                   item_id = nil,
                   rating = nil)
      @type = type
      @user_id = user_id
      @item_id = item_id
      @rating = rating
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
  end
end
