# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class GetRecommendedItemsBody < BaseModel
    # The type of the query.
    # @return [String]
    attr_accessor :type

    # The types of the query. Exactly one of type or types parameters must be provided.
    # @return [String]
    attr_accessor :types

    # The user id of the query.
    # @return [String]
    attr_accessor :user_id

    # The user ids of the query. Exactly one of user id or user ids parameters must be provided.
    # @return [List of String]
    attr_accessor :user_ids

    # The number of most recommended items to be skipped from the response. Defaults to 0.
    # @return [Integer]
    attr_accessor :from

    # The number of items asked to return in the response. Defaults to 10. Must be between 1 and 10.000 inclusive.
    # @return [Integer]
    attr_accessor :size

    # Similar item that the response should be similar to.
    # @return [String]
    attr_accessor :similar_item_id

    # Similar items that the response should be similar to.
    # At most one of similar item and similar items parameters can be provided.
    # @return [List of String]
    attr_accessor :similar_item_ids

    # The metadata fields to be included in returned item objects.
    # @return [List of String]
    attr_accessor :fields

    # Contraints on the returned users or items.
    # Filter structure is defined in [the filter parameter documentation](http://www.suggestgrid.com/docs/advanced-features#filters-parameter).
    # @return [Array<String, Boolean>]
    attr_accessor :filter

    # These item ids that will not be included in the response.
    # @return [List of String]
    attr_accessor :except

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["type"] = "type"
        @hash["types"] = "types"
        @hash["user_id"] = "user_id"
        @hash["user_ids"] = "user_ids"
        @hash["from"] = "from"
        @hash["size"] = "size"
        @hash["similar_item_id"] = "similar_item_id"
        @hash["similar_item_ids"] = "similar_item_ids"
        @hash["fields"] = "fields"
        @hash["filter"] = "filter"
        @hash["except"] = "except"
      end
      @hash
    end

    def initialize(type = nil,
                   types = nil,
                   user_id = nil,
                   user_ids = nil,
                   from = nil,
                   size = nil,
                   similar_item_id = nil,
                   similar_item_ids = nil,
                   fields = nil,
                   filter = nil,
                   except = nil,
                   additional_properties = {})
      @type = type
      @types = types
      @user_id = user_id
      @user_ids = user_ids
      @from = from
      @size = size
      @similar_item_id = similar_item_id
      @similar_item_ids = similar_item_ids
      @fields = fields
      @filter = filter
      @except = except

      # Add additional model properties to the instance
      additional_properties.each {|name, value| instance_variable_set("@#{name}", value)}
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        type = hash["type"]
        types = hash["types"]
        user_id = hash["user_id"]
        user_ids = hash["user_ids"]
        from = hash["from"]
        size = hash["size"]
        similar_item_id = hash["similar_item_id"]
        similar_item_ids = hash["similar_item_ids"]
        fields = hash["fields"]
        filter = hash["filter"]
        except = hash["except"]

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        GetRecommendedItemsBody.new(type,
                                    types,
                                    user_id,
                                    user_ids,
                                    from,
                                    size,
                                    similar_item_id,
                                    similar_item_ids,
                                    fields,
                                    filter,
                                    except,
                                    hash)
      end
    end
  end
end
