# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class GetSimilarUsersBody < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :types

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :user_id

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :user_ids

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :size

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :fields

    # TODO: Write general description for this method
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
