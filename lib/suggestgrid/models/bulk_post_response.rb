# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class BulkPostResponse < BaseModel
    # Message of the response.
    # @return [String]
    attr_accessor :message

    # Message of the response.
    # @return [List of BulkPostError]
    attr_accessor :errors

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["message"] = "message"
        @_hash["errors"] = "errors"
      end
      @_hash
    end

    def initialize(message = nil,
                   errors = nil)
      @message = message
      @errors = errors
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      message = hash['message']
      # Parameter is an array, so we need to iterate through it
      errors = nil
      if hash['errors'] != nil
        errors = Array.new
        hash['errors'].each{|structure| errors << (BulkPostError.from_hash(structure) if structure)}
      end

      # Create object from extracted values
      BulkPostResponse.new(message,
                           errors)
    end
  end
end
