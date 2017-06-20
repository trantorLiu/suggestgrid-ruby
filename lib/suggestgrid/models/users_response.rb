# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class UsersResponse < BaseModel
    # The number of users in the response.
    # @return [Long]
    attr_accessor :count

    # The total number of users available.
    # @return [Long]
    attr_accessor :total_count

    # The total number of users available.
    # @return [List of Metadata]
    attr_accessor :users

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["count"] = "count"
        @_hash["total_count"] = "total_count"
        @_hash["users"] = "users"
      end
      @_hash
    end

    def initialize(count = nil,
                   total_count = nil,
                   users = nil)
      @count = count
      @total_count = total_count
      @users = users
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      count = hash['count']
      total_count = hash['total_count']
      # Parameter is an array, so we need to iterate through it
      users = nil
      if hash['users'] != nil
        users = Array.new
        hash['users'].each{|structure| users << (Metadata.from_hash(structure) if structure)}
      end

      # Create object from extracted values
      UsersResponse.new(count,
                        total_count,
                        users)
    end
  end
end
