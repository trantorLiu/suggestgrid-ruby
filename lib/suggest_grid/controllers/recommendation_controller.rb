# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class RecommendationController < BaseController
    @@instance = RecommendationController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get Recommended Users
    # @param [GetRecommendedUsersBody] body Required parameter: Parameters for recommend users method.
    # @return ErrorResponse response from the API call
    def get_recommended_users(body)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/recommend/users'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'SUGGESTGRID',
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.post _query_url, headers: _headers, parameters: body.to_json, username: Configuration.basic_auth_user_name, password: Configuration.basic_auth_password
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 400
        raise APIException.new 'Request body is invalid.', 400, _response.raw_body
      elsif _response.status_code == 422
        raise APIException.new 'Required parameters are missing.', 422, _response.raw_body
      elsif _response.status_code == 429
        raise APIException.new 'Too many requests.', 429, _response.raw_body
      elsif _response.status_code == 500
        raise APIException.new 'Unexpected internal error.', 500, _response.raw_body
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body)
      return ErrorResponse.from_hash(decoded)
    end

    # Get Recommended Items
    # @param [GetRecommendedItemsBody] body Required parameter: Parameters for recommend items method.
    # @return ErrorResponse response from the API call
    def get_recommended_items(body)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/recommend/items'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'SUGGESTGRID',
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.post _query_url, headers: _headers, parameters: body.to_json, username: Configuration.basic_auth_user_name, password: Configuration.basic_auth_password
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 400
        raise APIException.new 'Request body is invalid.', 400, _response.raw_body
      elsif _response.status_code == 422
        raise APIException.new 'Required parameters are missing.', 422, _response.raw_body
      elsif _response.status_code == 429
        raise APIException.new 'Too many requests.', 429, _response.raw_body
      elsif _response.status_code == 500
        raise APIException.new 'Unexpected internal error.', 500, _response.raw_body
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body)
      return ErrorResponse.from_hash(decoded)
    end
  end
end
