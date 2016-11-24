# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class GetSimilarUsersBody < BaseModel
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

    # The number of users asked to return in the response.
    # @return [Integer]
    attr_accessor :size

    # The metadata fields that are to be included in returned users.
    # @return [List of String]
    attr_accessor :fields

    # Contraints on the returned users or items.
    # Filter structure is defined in [the filter parameter documentation](http://www.suggestgrid.com/docs/advanced-features#filters-parameter).
    # @return [Object]
    attr_accessor :filter

    # These user ids that will not be included in the response.
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
        @hash["size"] = "size"
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
                   size = nil,
                   fields = nil,
                   filter = nil,
                   except = nil)
      @type = type
      @types = types
      @user_id = user_id
      @user_ids = user_ids
      @size = size
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
        user_id = hash["user_id"]
        user_ids = hash["user_ids"]
        size = hash["size"]
        fields = hash["fields"]
        filter = hash["filter"]
        except = hash["except"]

        # Create object from extracted values
        GetSimilarUsersBody.new(type,
                                types,
                                user_id,
                                user_ids,
                                size,
                                fields,
                                filter,
                                except)
      end
    end
  end
end
