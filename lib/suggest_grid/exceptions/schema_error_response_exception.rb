# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class SchemaErrorResponseException < APIException
    # Message of the response.
    # @return [String]
    attr_accessor :message

    # The cause of the error.
    # @return [Object]
    attr_accessor :value

    # Programatic description of the error.
    # @return [Object]
    attr_accessor :error

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
      @value = hash["value"]
      @error = hash["error"]
    end
  end
end