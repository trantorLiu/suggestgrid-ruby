# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ) on 05/30/2016

module SuggestGrid
  class GetTypesResponse

    # The list of type names
    # @return [List of String]
    attr_accessor :types

    # Status code of the response. It is not 2XX.
    # @return [Integer]
    attr_accessor :status

    def initialize(types = nil,
                   status = nil)
      @types = types
      @status = status

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
        types = hash["types"]
        status = hash["status"]
        # Create object from extracted values
        GetTypesResponse.new(types,
                             status)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['types'] = types
      hash['status'] = status
      hash
    end
  end
end
