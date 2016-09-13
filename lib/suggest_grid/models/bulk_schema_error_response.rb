# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class BulkSchemaErrorResponse < BaseModel
    # Message of the response.
    # @return [String]
    attr_accessor :message

    # Message of the response.
    # @return [List of SchemaErrorResponse]
    attr_accessor :errors

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["message"] = "message"
        @hash["errors"] = "errors"
      end
      @hash
    end

    def initialize(message = nil,
                   errors = nil)
      @message = message
      @errors = errors
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        message = hash["message"]
        # Parameter is an array, so we need to iterate through it
        errors = nil
        if hash["errors"] != nil
          errors = Array.new
          hash["errors"].each{|structure| errors << (SchemaErrorResponse.from_hash(structure) if structure)}
        end

        # Create object from extracted values
        BulkSchemaErrorResponse.new(message,
                                    errors)
      end
    end
  end
end
