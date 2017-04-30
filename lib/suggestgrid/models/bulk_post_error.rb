# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class BulkPostError < BaseModel
    # Message of the response.
    # @return [String]
    attr_accessor :message

    # The cause of the error.
    # @return [Object]
    attr_accessor :value

    # Programatic description of the error.
    # @return [Object]
    attr_accessor :error

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["message"] = "message"
        @hash["value"] = "value"
        @hash["error"] = "error"
      end
      @hash
    end

    def initialize(message = nil,
                   value = nil,
                   error = nil,
                   additional_properties = {})
      @message = message
      @value = value
      @error = error

      # Add additional model properties to the instance
      additional_properties.each {|name, value| instance_variable_set("@#{name}", value)}
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        message = hash['message']
        value = hash['value']
        error = hash['error']

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        BulkPostError.new(message,
                          value,
                          error,
                          hash)
      end
    end
  end
end
