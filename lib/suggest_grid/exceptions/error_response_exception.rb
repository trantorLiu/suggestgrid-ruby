# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class ErrorResponseException < APIException
    # Message of the response.
    # @return [String]
    attr_accessor :error_text

    # Description of the response.
    # @return [String]
    attr_accessor :error_description

    # URI of the response for more details.
    # @return [String]
    attr_accessor :error_uri

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
      @error_text = hash["error_text"]
      @error_description = hash["error_description"]
      @error_uri = hash["error_uri"]
    end
  end
end