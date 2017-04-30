# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class ActionsResponse < BaseModel
    # The number of actions in the response.
    # @return [Long]
    attr_accessor :count

    # The total number of actions.
    # @return [Long]
    attr_accessor :total_count

    # The total number of actions.
    # @return [List of Action]
    attr_accessor :actions

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["count"] = "count"
        @hash["total_count"] = "total_count"
        @hash["actions"] = "actions"
      end
      @hash
    end

    def initialize(count = nil,
                   total_count = nil,
                   actions = nil,
                   additional_properties = {})
      @count = count
      @total_count = total_count
      @actions = actions

      # Add additional model properties to the instance
      additional_properties.each {|name, value| instance_variable_set("@#{name}", value)}
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        count = hash['count']
        total_count = hash['total_count']
        # Parameter is an array, so we need to iterate through it
        actions = nil
        if hash['actions'] != nil
          actions = Array.new
          hash['actions'].each{|structure| actions << (Action.from_hash(structure) if structure)}
        end

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        ActionsResponse.new(count,
                            total_count,
                            actions,
                            hash)
      end
    end
  end
end
