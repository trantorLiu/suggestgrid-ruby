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
      if @_hash.nil?
        @_hash = {}
        @_hash["message"] = "message"
        @_hash["value"] = "value"
        @_hash["error"] = "error"
      end
      @_hash
    end

    def initialize(message = nil,
                   value = nil,
                   error = nil)
      @message = message
      @value = value
      @error = error
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      message = hash['message']
      value = hash['value']
      error = hash['error']

      # Create object from extracted values
      BulkPostError.new(message,
                        value,
                        error)
    end
  end
end
