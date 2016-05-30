# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ) on 05/30/2016

module SuggestGrid
  class ActionsQuery

    # Delete all actions of a type older than the given timestamp or time.
    # Valid times are 1s, 1m, 1h, 1d, 1M, 1y, or unix timestamp (like 1443798195).
    # @return [String]
    attr_accessor :time

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :user_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :item_id

    def initialize(time = nil,
                   user_id = nil,
                   item_id = nil)
      @time = time
      @user_id = user_id
      @item_id = item_id

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
        time = hash["time"]
        user_id = hash["user_id"]
        item_id = hash["item_id"]
        # Create object from extracted values
        ActionsQuery.new(time,
                         user_id,
                         item_id)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['time'] = time
      hash['user_id'] = user_id
      hash['item_id'] = item_id
      hash
    end
  end
end
