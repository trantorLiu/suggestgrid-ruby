# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ) on 06/16/2016

module SuggestGrid
  class ErrorResponse

    # Message of the response.
    # @return [String]
    attr_accessor :message

    # Status code of the response. It is not 2XX.
    # @return [Integer]
    attr_accessor :status

    def initialize(message = nil,
                   status = nil)
      @message = message
      @status = status

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
        status = hash["status"]
        # Create object from extracted values
        ErrorResponse.new(message,
                          status)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['message'] = message
      hash['status'] = status
      hash
    end
  end
end
