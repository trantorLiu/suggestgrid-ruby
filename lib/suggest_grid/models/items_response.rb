# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class ItemsResponse < BaseModel
    # The number of items in the response.
    # @return [Long]
    attr_accessor :count

    # The total number of items available.
    # @return [Long]
    attr_accessor :total_count

    # The total number of items available.
    # @return [List of Metadata]
    attr_accessor :items

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["count"] = "count"
        @hash["total_count"] = "total_count"
        @hash["items"] = "items"
      end
      @hash
    end

    def initialize(count = nil,
                   total_count = nil,
                   items = nil)
      @count = count
      @total_count = total_count
      @items = items
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        count = hash["count"]
        total_count = hash["total_count"]
        # Parameter is an array, so we need to iterate through it
        items = nil
        if hash["items"] != nil
          items = Array.new
          hash["items"].each{|structure| items << (Metadata.from_hash(structure) if structure)}
        end

        # Create object from extracted values
        ItemsResponse.new(count,
                          total_count,
                          items)
      end
    end
  end
end
