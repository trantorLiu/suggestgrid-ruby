# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class APIException < StandardError
    attr_reader :response

    # The constructor.
    # @param [String] The reason for raising an exception
    # @param [HttpResponse] The HttpResponse object returned by the HttpClient.
    def initialize(reason, response)
      super(reason)
      @response = response
	  unbox() if not self.instance_of? APIException
    end

	# Extracts the required properties from the response body
	def unbox
	  raise NotImplementedError, "This method needs to be implemented in a child class."
	end
  end
end
