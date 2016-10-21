# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).
module SuggestGrid
  class UnirestClient < HttpClient
    # Method overridden from HttpClient.
    def execute_as_string(http_request)

      response = get_connection(http_request.username, http_request.password)
      .send(http_request.http_method.downcase, http_request.query_url) do |faraday_request|
        faraday_request.headers = http_request.headers
        faraday_request.body = http_request.parameters
      end

      return convert_response(response)
    end

    # Method overridden from HttpClient.
    def execute_as_binary(http_request)

      response = get_connection(http_request.username, http_request.password)
      .send(http_request.http_method.downcase, http_request.query_url) do |faraday_request|
        faraday_request.headers = http_request.headers
        faraday_request.body = http_request.parameters
      end

      return convert_response(response)
    end

    # Method overridden from HttpClient.
    def convert_response(response)
      return HttpResponse.new(response.status, response.headers, response.body)
    end

    def get_connection(user_name, password)
      Faraday.new do |builder|
        builder.request :retry
        builder.request :basic_auth, user_name, password if user_name
        builder.adapter :net_http
      end
    end
  end
end
