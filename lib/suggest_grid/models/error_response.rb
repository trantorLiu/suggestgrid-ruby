# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class ErrorResponse < BaseModel
    # Message of the response.
    # @return [String]
    attr_accessor :message

    # Status code of the response. It is not 2XX.
    # @return [Integer]
    attr_accessor :status

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["message"] = "message"
        @hash["status"] = "status"
      end
      @hash
    end

    def initialize(message = nil,
                   status = nil)
      @message = message
      @status = status
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        message = hash["message"]
        status = hash["status"]

        # Create object from extracted values
        ErrorResponse.new(message,
                          status)
      end
    end
  end
end
