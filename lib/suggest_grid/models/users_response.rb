# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class UsersResponse < BaseModel
    # The number of users in the response.
    # @return [Long]
    attr_accessor :count

    # The number of users in the response.
    # @return [List of Metadata]
    attr_accessor :users

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["count"] = "count"
        @hash["users"] = "users"
      end
      @hash
    end

    def initialize(count = nil,
                   users = nil)
      @count = count
      @users = users
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        count = hash["count"]
        # Parameter is an array, so we need to iterate through it
        users = nil
        if hash["users"] != nil
          users = Array.new
          hash["users"].each{|structure| users << (Metadata.from_hash(structure) if structure)}
        end

        # Create object from extracted values
        UsersResponse.new(count,
                          users)
      end
    end
  end
end
