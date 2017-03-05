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
      if @hash.nil?
        @hash = {}
        @hash["message"] = "message"
        @hash["errors"] = "errors"
      end
      @hash
    end

    def initialize(message = nil,
                   errors = nil,
                   additional_properties = {})
      @message = message
      @errors = errors

      # Add additional model properties to the instance
      additional_properties.each {|name, value| instance_variable_set("@#{name}", value)}
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
          hash["errors"].each{|structure| errors << (BulkPostError.from_hash(structure) if structure)}
        end

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        BulkPostResponse.new(message,
                             errors,
                             hash)
      end
    end
  end
end
