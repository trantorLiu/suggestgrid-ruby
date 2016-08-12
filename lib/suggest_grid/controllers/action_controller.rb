# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class ActionController < BaseController
    @@instance = ActionController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get Actions
    # @param [String] type Optional parameter: The type of the actions.
    # @param [String] user_id Optional parameter: The user id of the actions.
    # @param [String] item_id Optional parameter: The item id of the actions.
    # @param [String] older_than Optional parameter: Delete all actions of a type older than the given timestamp or time. Valid times are 1s, 1m, 1h, 1d, 1M, 1y, or unix timestamp (like 1443798195).
    # @return ErrorResponse response from the API call
    def get_actions(type = nil, 
                    user_id = nil, 
                    item_id = nil, 
                    older_than = nil)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/actions'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'type' => type,
        'user_id' => user_id,
        'item_id' => item_id,
        'older_than' => older_than
      }

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
      if _response.status_code == 400
        raise APIException.new 'Required `user_id` or `item_id` parameters are missing from the request body.', 400, _response.raw_body
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

    # Post an Action
    # @param [Action] body Required parameter: The action to be posted.
    # @return ErrorResponse response from the API call
    def post_action(body)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/actions'

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
        raise APIException.new 'Required `user_id` or `item_id` parameters are missing from the request body.', 400, _response.raw_body
      elsif _response.status_code == 402
        raise APIException.new 'Action limit exceeded.', 402, _response.raw_body
      elsif _response.status_code == 404
        raise APIException.new 'Type does not exists.', 404, _response.raw_body
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

    # Delete Actions
    # @param [String] type Optional parameter: The type of the actions.
    # @param [String] user_id Optional parameter: The user id of the actions.
    # @param [String] item_id Optional parameter: The item id of the actions.
    # @param [String] older_than Optional parameter: Delete all actions of a type older than the given timestamp or time. Valid times are 1s, 1m, 1h, 1d, 1M, 1y, or unix timestamp (like 1443798195).
    # @return ErrorResponse response from the API call
    def delete_actions(type = nil, 
                       user_id = nil, 
                       item_id = nil, 
                       older_than = nil)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/actions'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'type' => type,
        'user_id' => user_id,
        'item_id' => item_id,
        'older_than' => older_than
      }

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
      if _response.status_code == 400
        raise APIException.new 'Required `user_id` or `item_id` parameters are missing from the request body.', 400, _response.raw_body
      elsif _response.status_code == 404
        raise APIException.new 'Type does not exists.', 404, _response.raw_body
      elsif _response.status_code == 422
        raise APIException.new 'No query parameter (`user_id`, `item_id`, or `older_than`) is given.  In order to delete all actionsdelete the type.', 422, _response.raw_body
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

    # Post Bulk Actions
    # @param [String] body Required parameter: A number of action objects separated with newlines. Note that this is not a valid JSON data structure. The body size is limited to 10 thousand lines.
    # @return ErrorResponse response from the API call
    def post_bulk_actions(body)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/actions/_bulk'

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
      if _response.status_code == 402
        raise APIException.new 'Action limit exceeded.', 402, _response.raw_body
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
