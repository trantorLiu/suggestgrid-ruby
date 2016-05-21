# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ) on 05/21/2016

module SuggestGrid
  class SchemaErrorResponse

    # Message of the response.
    # @return [String]
    attr_accessor :message

    # The cause of the error.
    # @return [Object]
    attr_accessor :value

    # Programatic description of the error.
    # @return [Object]
    attr_accessor :error

    def initialize(message = nil,
                   value = nil,
                   error = nil)
      @message = message
      @value = value
      @error = error

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
        message = hash["message"]
        value = hash["value"]
        error = hash["error"]
        # Create object from extracted values
        SchemaErrorResponse.new(message,
                                value,
                                error)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['message'] = message
      hash['value'] = value
      hash['error'] = error
      hash
    end
  end
end
