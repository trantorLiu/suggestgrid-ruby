# This file was automatically generated for SuggestGrid by APIMATIC v2.0 on 05/02/2016

module SuggestGrid
  class RecommendUsersBody
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :item_id

    # TODO: Write general description for this method
    # @return [Array<String>]
    attr_accessor :item_ids

    # TODO: Write general description for this method
    # @return [mixed]
    attr_accessor :filter

    # TODO: Write general description for this method
    # @return [Numeric]
    attr_accessor :size

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :similar_user_id

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
