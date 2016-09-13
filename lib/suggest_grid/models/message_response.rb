# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class MessageResponse < BaseModel
    # Message of the response.
    # @return [String]
    attr_accessor :message

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["message"] = "message"
      end
      @hash
    end

    def initialize(message = nil)
      @message = message
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        message = hash["message"]

        # Create object from extracted values
        MessageResponse.new(message)
      end
    end
  end
end
