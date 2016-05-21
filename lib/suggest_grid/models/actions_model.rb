# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ) on 05/21/2016

module SuggestGrid
  class ActionsModel

    # TODO: Write general description for this method
    # @return [List of Action]
    attr_accessor :actions

    def initialize(actions = nil)
      @actions = actions

    end

    def method_missing(method_name)
      puts "There is no method called '#{method_name}'."
    end

    # Creates JSON of the curent object
    def to_json(options = {})
      hash = key_map
      hash.to_json(options)
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        # Parameter is an array, so we need to iterate through it
        actions = nil
        if hash["actions"] != nil
          actions = Array.new
          hash["actions"].each{|structure| actions << Action.from_hash(structure)}
        end
        # Create object from extracted values
        ActionsModel.new(actions)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['actions'] = actions.map(&:key_map)
      hash
    end
  end
end
