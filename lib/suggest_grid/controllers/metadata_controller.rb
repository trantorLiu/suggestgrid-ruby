# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class MetadataController < BaseController
    @@instance = MetadataController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get Users
    # @return ErrorResponse response from the API call
    def get_users
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/users'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'SUGGESTGRID',
        'accept' => 'application/json'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.get _query_url, headers: _headers, username: Configuration.basic_auth_user_name, password: Configuration.basic_auth_password
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 429
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

    # Delete All Users
    # @return ErrorResponse response from the API call
    def delete_all_users
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/users'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'SUGGESTGRID',
        'accept' => 'application/json'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.delete _query_url, headers: _headers, username: Configuration.basic_auth_user_name, password: Configuration.basic_auth_password
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 429
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

    # Get Items
    # @return ErrorResponse response from the API call
    def get_items
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/items'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'SUGGESTGRID',
        'accept' => 'application/json'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.get _query_url, headers: _headers, username: Configuration.basic_auth_user_name, password: Configuration.basic_auth_password
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 429
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

    # Delete All Items
    # @return ErrorResponse response from the API call
    def delete_all_items
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/items'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'SUGGESTGRID',
        'accept' => 'application/json'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.delete _query_url, headers: _headers, username: Configuration.basic_auth_user_name, password: Configuration.basic_auth_password
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 429
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

    # Post Bulk Users
    # @param [String] body Required parameter: A number of user metadata objects separated with newlines. Each user metadata object must have its id field. Note that this is not a valid JSON data structure. The body size is limited to 10 thousand lines.
    # @return ErrorResponse response from the API call
    def post_bulk_users(body)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/users/_bulk'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'SUGGESTGRID',
        'accept' => 'application/json'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.post _query_url, headers: _headers, parameters: body, username: Configuration.basic_auth_user_name, password: Configuration.basic_auth_password
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 209
        raise APIException.new 'Some metadata is not uploaded successfully.', 209, _response.raw_body
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

    # Post Bulk Items
    # @param [String] body Required parameter: A number of item metadata objects separated with newlines. Each item metadata object must have its id field. Note that this is not a valid JSON data structure. The body size is limited to 10 thousand lines.
    # @return ErrorResponse response from the API call
    def post_bulk_items(body)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/items/_bulk'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'SUGGESTGRID',
        'accept' => 'application/json'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.post _query_url, headers: _headers, parameters: body, username: Configuration.basic_auth_user_name, password: Configuration.basic_auth_password
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 209
        raise APIException.new 'Some metadata is not uploaded successfully.', 209, _response.raw_body
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
