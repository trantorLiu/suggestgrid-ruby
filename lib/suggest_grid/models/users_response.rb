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
      if @hash.nil?
        @hash = {}
        @hash["count"] = "count"
        @hash["total_count"] = "total_count"
        @hash["users"] = "users"
      end
      @hash
    end

    def initialize(count = nil,
                   total_count = nil,
                   users = nil,
                   additional_properties = {})
      @count = count
      @total_count = total_count
      @users = users

      # Add additional model properties to the instance
      additional_properties.each {|name, value| instance_variable_set("@#{name}", value)}
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
        users = nil
        if hash["users"] != nil
          users = Array.new
          hash["users"].each{|structure| users << (Metadata.from_hash(structure) if structure)}
        end

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        UsersResponse.new(count,
                          total_count,
                          users,
                          hash)
      end
    end
  end
end
