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
    # @return CountResponse response from the API call
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
      _request = @http_client.get _query_url, headers: _headers, username: Configuration.basic_auth_user_name, password: Configuration.basic_auth_password

      # Call the on_before_request callback
      @http_call_back.on_before_request(_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_request)

      # Wrap the request and response in an HttpContext object
      _context = HttpContext.new(_request, _response)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_context) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 400
        raise ErrorResponseException.new '400 - Required `user_id` or `item_id` parameters are missing from the request body.', _context
      elsif _response.status_code == 429
        raise ErrorResponseException.new '429 - Too many requests.', _context
      elsif _response.status_code == 500
        raise APIException.new '500 - Unexpected internal error.', _context
      end

      # Global error handling using HTTP status codes.
      validate_response(_context)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body)
      return CountResponse.from_hash(decoded)
    end

    # Post an Action
    # @param [Action] action Required parameter: The action to be posted.
    # @return MessageResponse response from the API call
    def post_action(action)
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
      _request = @http_client.post _query_url, headers: _headers, parameters: action.to_json, username: Configuration.basic_auth_user_name, password: Configuration.basic_auth_password

      # Call the on_before_request callback
      @http_call_back.on_before_request(_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_request)

      # Wrap the request and response in an HttpContext object
      _context = HttpContext.new(_request, _response)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_context) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 400
        raise ErrorResponseException.new '400 - Required `user_id` or `item_id` parameters are missing from the request body.', _context
      elsif _response.status_code == 402
        raise ErrorResponseException.new '402 - Action limit exceeded.', _context
      elsif _response.status_code == 404
        raise ErrorResponseException.new '404 - Type does not exists.', _context
      elsif _response.status_code == 429
        raise ErrorResponseException.new '429 - Too many requests.', _context
      elsif _response.status_code == 500
        raise APIException.new '500 - Unexpected internal error.', _context
      end

      # Global error handling using HTTP status codes.
      validate_response(_context)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body)
      return MessageResponse.from_hash(decoded)
    end

    # Delete Actions
    # @param [String] type Optional parameter: The type of the actions.
    # @param [String] user_id Optional parameter: The user id of the actions.
    # @param [String] item_id Optional parameter: The item id of the actions.
    # @param [String] older_than Optional parameter: Delete all actions of a type older than the given timestamp or time. Valid times are 1s, 1m, 1h, 1d, 1M, 1y, or unix timestamp (like 1443798195).
    # @return MessageResponse response from the API call
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
      _request = @http_client.delete _query_url, headers: _headers, username: Configuration.basic_auth_user_name, password: Configuration.basic_auth_password

      # Call the on_before_request callback
      @http_call_back.on_before_request(_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_request)

      # Wrap the request and response in an HttpContext object
      _context = HttpContext.new(_request, _response)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_context) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 400
        raise ErrorResponseException.new '400 - Required `user_id` or `item_id` parameters are missing from the request body.', _context
      elsif _response.status_code == 404
        raise ErrorResponseException.new '404 - Type does not exists.', _context
      elsif _response.status_code == 422
        raise ErrorResponseException.new '422 - No query parameter (`user_id`, `item_id`, or `older_than`) is given.  In order to delete all actionsdelete the type.', _context
      elsif _response.status_code == 429
        raise ErrorResponseException.new '429 - Too many requests.', _context
      elsif _response.status_code == 500
        raise APIException.new '500 - Unexpected internal error.', _context
      end

      # Global error handling using HTTP status codes.
      validate_response(_context)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body)
      return MessageResponse.from_hash(decoded)
    end

    # Post Bulk Actions
    # @param [Collection] actions Required parameter: List of actions to be posted.
    # @return MessageResponse response from the API call
    def post_bulk_actions(actions)
        body = ''
        actions.each do |action|
            body += "#{action.to_json}\n"
        end
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/actions/_bulk'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'SUGGESTGRID',
        'accept' => 'application/json',
        'content-type' => 'text/plain; charset=utf-8'
      }

      # Create the HttpRequest object for the call
      _request = @http_client.post _query_url, headers: _headers, parameters: actions, username: Configuration.basic_auth_user_name, password: Configuration.basic_auth_password

      # Call the on_before_request callback
      @http_call_back.on_before_request(_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_request)

      # Wrap the request and response in an HttpContext object
      _context = HttpContext.new(_request, _response)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_context) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 400
        raise ErrorResponseException.new '400 - Body is missing.', _context
      elsif _response.status_code == 402
        raise ErrorResponseException.new '402 - Action limit exceeded.', _context
      elsif _response.status_code == 429
        raise ErrorResponseException.new '429 - Too many requests.', _context
      elsif _response.status_code == 500
        raise APIException.new '500 - Unexpected internal error.', _context
      end

      # Global error handling using HTTP status codes.
      validate_response(_context)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body)
      return MessageResponse.from_hash(decoded)
    end
  end
end
