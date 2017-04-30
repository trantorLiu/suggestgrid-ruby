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

    # The optional rating given by the user, if the type is explicit.
    # @return [Float]
    attr_accessor :rating

    # The optional UNIX epoch timestamp of the action. Defaults to the current timestamp.
    # @return [Long]
    attr_accessor :timestamp

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["type"] = "type"
        @hash["user_id"] = "user_id"
        @hash["item_id"] = "item_id"
        @hash["rating"] = "rating"
        @hash["timestamp"] = "timestamp"
      end
      @hash
    end

    def initialize(type = nil,
                   user_id = nil,
                   item_id = nil,
                   rating = nil,
                   timestamp = nil,
                   additional_properties = {})
      @type = type
      @user_id = user_id
      @item_id = item_id
      @rating = rating
      @timestamp = timestamp

      # Add additional model properties to the instance
      additional_properties.each {|name, value| instance_variable_set("@#{name}", value)}
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        type = hash['type']
        user_id = hash['user_id']
        item_id = hash['item_id']
        rating = hash['rating']
        timestamp = hash['timestamp']

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        Action.new(type,
                   user_id,
                   item_id,
                   rating,
                   timestamp,
                   hash)
      end
    end
  end
end
