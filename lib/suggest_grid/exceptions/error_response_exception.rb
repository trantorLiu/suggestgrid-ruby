# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class ErrorResponseException < APIException
    # Message of the response.
    # @return [String]
    attr_accessor :message

    # Status code of the response. It is not 2XX.
    # @return [Integer]
    attr_accessor :status

    # The constructor.
    # @param [String] The reason for raising an exception
    # @param [HttpContext] The HttpContext of the API call.
    def initialize(reason, context)
      super(reason, context)
      begin
        hash = APIHelper.json_deserialize(@context.response.raw_body)
        unbox(hash)
	  rescue TypeError
	  end
    end
	
    # Populates this object by extracting properties from a hash.
    # @param [Hash] The deserialized response sent by the server in the response body.
    def unbox(hash)
      @message = hash["message"]
      @status = hash["status"]
    end
  end
end