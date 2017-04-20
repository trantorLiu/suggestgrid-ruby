# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class GetSimilarItemsBody < BaseModel
    # The type of the query. Similarities will be calculated based on actions of this type.
    # @return [String]
    attr_accessor :type

    # The types of the query. Exactly one of type or types parameters must be provided.
    # @return [String]
    attr_accessor :types

    # The item id of the query. Get similar items to given item id. Either item id or item ids must be provided.
    # @return [String]
    attr_accessor :item_id

    # The item ids of the query. Exactly one of item id or item ids parameters must be provided. Get similar items to given item ids. Either item id or item ids must be provided.
    # @return [List of String]
    attr_accessor :item_ids

    # The number of most similar items to be skipped from the response. Defaults to 0.
    # @return [Integer]
    attr_accessor :from

    # The number of items requested. Defaults to 10. Must be between 1 and 10,000 inclusive.
    # @return [Integer]
    attr_accessor :size

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
        @hash["item_id"] = "item_id"
        @hash["item_ids"] = "item_ids"
        @hash["from"] = "from"
        @hash["size"] = "size"
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
                   from = nil,
                   size = nil,
                   fields = nil,
                   filter = nil,
                   except = nil,
                   additional_properties = {})
      @type = type
      @types = types
      @item_id = item_id
      @item_ids = item_ids
      @from = from
      @size = size
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
        type = hash['type']
        types = hash['types']
        item_id = hash['item_id']
        item_ids = hash['item_ids']
        from = hash['from']
        size = hash['size']
        fields = hash['fields']
        filter = hash['filter']
        except = hash['except']

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        GetSimilarItemsBody.new(type,
                                types,
                                item_id,
                                item_ids,
                                from,
                                size,
                                fields,
                                filter,
                                except,
                                hash)
      end
    end
  end
end
