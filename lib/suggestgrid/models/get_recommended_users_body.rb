# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class GetRecommendedUsersBody < BaseModel
    # The type of the query. Recommendations will be calculated based on actions of this type.
    # @return [String]
    attr_accessor :type

    # The types of the query. Exactly one of type or types parameters must be provided.
    # @return [String]
    attr_accessor :types

    # The item id of the query.
    # @return [String]
    attr_accessor :item_id

    # The item ids of the query. Exactly one of item id or item ids parameters must be provided.
    # @return [List of String]
    attr_accessor :item_ids

    # The number of most recommended items to be skipped from the response. Defaults to 0.
    # @return [Integer]
    attr_accessor :from

    # The number of users requested. Defaults to 10. Must be between 1 and 10,000 inclusive.
    # @return [Integer]
    attr_accessor :size

    # Similar user that the response should be similar to.
    # @return [String]
    attr_accessor :similar_user_id

    # Similar users that the response should be similar to.
    # At most one of similar user and similar users parameters can be provided.
    # @return [List of String]
    attr_accessor :similar_user_ids

    # The metadata fields to be included in returned user objects.
    # @return [List of String]
    attr_accessor :fields

    # Contraints on the returned users or items.
    # Filter structure is defined in [the filter parameter documentation](http://www.suggestgrid.com/docs/advanced-features#filters-parameter).
    # @return [Array<String, Boolean>]
    attr_accessor :filter

    # These user ids that will not be included in the response.
    # @return [List of String]
    attr_accessor :except

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["type"] = "type"
        @_hash["types"] = "types"
        @_hash["item_id"] = "item_id"
        @_hash["item_ids"] = "item_ids"
        @_hash["from"] = "from"
        @_hash["size"] = "size"
        @_hash["similar_user_id"] = "similar_user_id"
        @_hash["similar_user_ids"] = "similar_user_ids"
        @_hash["fields"] = "fields"
        @_hash["filter"] = "filter"
        @_hash["except"] = "except"
      end
      @_hash
    end

    def initialize(type = nil,
                   types = nil,
                   item_id = nil,
                   item_ids = nil,
                   from = nil,
                   size = nil,
                   similar_user_id = nil,
                   similar_user_ids = nil,
                   fields = nil,
                   filter = nil,
                   except = nil)
      @type = type
      @types = types
      @item_id = item_id
      @item_ids = item_ids
      @from = from
      @size = size
      @similar_user_id = similar_user_id
      @similar_user_ids = similar_user_ids
      @fields = fields
      @filter = filter
      @except = except
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      type = hash['type']
      types = hash['types']
      item_id = hash['item_id']
      item_ids = hash['item_ids']
      from = hash['from']
      size = hash['size']
      similar_user_id = hash['similar_user_id']
      similar_user_ids = hash['similar_user_ids']
      fields = hash['fields']
      filter = hash['filter']
      except = hash['except']

      # Create object from extracted values
      GetRecommendedUsersBody.new(type,
                                  types,
                                  item_id,
                                  item_ids,
                                  from,
                                  size,
                                  similar_user_id,
                                  similar_user_ids,
                                  fields,
                                  filter,
                                  except)
    end
  end
end
