# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ) on 05/21/2016

module SuggestGrid
  class UsersModel

    # TODO: Write general description for this method
    # @return [List of Metadata]
    attr_accessor :users

    def initialize(users = nil)
      @users = users

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
        users = nil
        if hash["users"] != nil
          users = Array.new
          hash["users"].each{|structure| users << Metadata.from_hash(structure)}
        end
        # Create object from extracted values
        UsersModel.new(users)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['users'] = users.map(&:key_map)
      hash
    end
  end
end
