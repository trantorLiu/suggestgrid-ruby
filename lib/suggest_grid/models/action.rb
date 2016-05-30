# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ) on 05/30/2016

module SuggestGrid
  class Action

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :user_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :item_id

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :rating

    def initialize(user_id = nil,
                   item_id = nil,
                   rating = nil)
      @user_id = user_id
      @item_id = item_id
      @rating = rating

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
        user_id = hash["user_id"]
        item_id = hash["item_id"]
        rating = hash["rating"]
        # Create object from extracted values
        Action.new(user_id,
                   item_id,
                   rating)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['user_id'] = user_id
      hash['item_id'] = item_id
      hash['rating'] = rating
      hash
    end
  end
end
