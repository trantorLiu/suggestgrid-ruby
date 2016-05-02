# This file was automatically generated for SuggestGrid by APIMATIC v2.0 on 05/02/2016

module SuggestGrid
  class Action
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :user_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :item_id

    # TODO: Write general description for this method
    # @return [Numeric]
    attr_accessor :rating

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
      hash['user_id'] = user_id
      hash['item_id'] = item_id
      hash['rating'] = rating
      hash
    end
  end
end
