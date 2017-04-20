# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class BaseController
    attr_accessor :http_client, :http_call_back

    @@http_client = FaradayClient.new

    @@global_headers = {
      'user-agent' => 'SUGGESTGRID'
    }

    def initialize(http_client: nil, http_call_back: nil)
      @http_client = http_client ||= @@http_client
      @http_call_back = http_call_back
    end

    def validate_parameters(args)
      args.each do |_name, value|
        if value.nil?
          raise ArgumentError.new 'Required parameter #{name} cannot be nil.'
        end
      end
    end

    def execute_request(request, binary: false)
      @http_call_back.on_before_request(request) if @http_call_back

      APIHelper.clean_hash(request.headers)
      request.headers = @@global_headers.clone.merge(request.headers)

      response = binary ? @http_client.execute_as_binary(request) : @http_client.execute_as_string(request)
      context = HttpContext.new(request, response)

      @http_call_back.on_after_response(context) if @http_call_back

      return context
    end

    def validate_response(context)
      if !context.response.status_code.between?(200, 208) #[200,208] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', context
      end
    end
  end
end
