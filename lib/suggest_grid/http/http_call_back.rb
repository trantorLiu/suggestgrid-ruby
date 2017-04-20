# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class HttpCallBack
    # A controller will call this method before making an HTTP Request.
    # @param [HttpRequest] The HttpRequest object which the HttpClient will execute.
    def on_before_request(http_request)
      raise NotImplementedError, 'This method needs to be implemented in a child class.'
    end

    # A controller will call this method after making an HTTP Request.
    # @param [HttpContext] The HttpContext of the API call.
    def on_after_response(http_context)
      raise NotImplementedError, 'This method needs to be implemented in a child class.'
    end
  end
end
