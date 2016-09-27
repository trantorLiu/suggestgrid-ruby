# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class GetRecommendedUsersBody < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :types

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :item_id

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :item_ids

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :size

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :similar_user_id

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :fields

    # Contraints on the returned users or items. Filter structure is defined in [the filter parameter documentation](http://www.suggestgrid.com/docs/concepts#filters-parameter).
    # @return [Object]
    attr_accessor :filter

    # These ids will not be included in the response.
    # @return [List of String]
    attr_accessor :except

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["type"] = "type"
        @hash["types"] = "types"
        @hash["item_id"] = "item_id"
        @hash["item_ids"] = "item_ids"
        @hash["size"] = "size"
        @hash["similar_user_id"] = "similar_user_id"
        @hash["fields"] = "fields"
        @hash["filter"] = "filter"
        @hash["except"] = "except"
      end
      @hash
    end

    def initialize(type = nil,
                   types = nil,
                   item_id = nil,
                   item_ids = nil,
                   size = nil,
                   similar_user_id = nil,
                   fields = nil,
                   filter = nil,
                   except = nil)
      @type = type
      @types = types
      @item_id = item_id
      @item_ids = item_ids
      @size = size
      @similar_user_id = similar_user_id
      @fields = fields
      @filter = filter
      @except = except
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        type = hash["type"]
        types = hash["types"]
        item_id = hash["item_id"]
        item_ids = hash["item_ids"]
        size = hash["size"]
        similar_user_id = hash["similar_user_id"]
        fields = hash["fields"]
        filter = hash["filter"]
        except = hash["except"]

        # Create object from extracted values
        GetRecommendedUsersBody.new(type,
                                    types,
                                    item_id,
                                    item_ids,
                                    size,
                                    similar_user_id,
                                    fields,
                                    filter,
                                    except)
      end
    end
  end
end
