# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class ActionController < BaseController
    @@instance = ActionController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Post an Action
    # @param [Action] action Required parameter: The action to be posted.
    # @return MessageResponse response from the API call
    def post_action(action)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/actions'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: action.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 400
        raise ErrorResponseException.new 'Required `user_id` or `item_id` parameters are missing from the request body.', _context
      elsif _context.response.status_code == 402
        raise ErrorResponseException.new 'Action limit exceeded.', _context
      elsif _context.response.status_code == 404
        raise ErrorResponseException.new 'Type does not exists.', _context
      elsif _context.response.status_code == 429
        raise ErrorResponseException.new 'Too many requests.', _context
      elsif !_context.response.status_code.between?(200, 208)
        raise ErrorResponseException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return MessageResponse.from_hash(decoded)
    end

    # Post Bulk Actions
    # @param [Collection] actions Required parameter: List of actions to be posted.
    # @return BulkPostResponse response from the API call
    def post_bulk_actions(actions)
        body = ''
        actions.each do |action|
            body += "#{action.to_json}\n"
        end

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/actions/_bulk'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'text/plain; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: body
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 400
        raise ErrorResponseException.new 'Body is missing.', _context
      elsif _context.response.status_code == 402
        raise ErrorResponseException.new 'Action limit exceeded.', _context
      elsif _context.response.status_code == 429
        raise ErrorResponseException.new 'Too many requests.', _context
      elsif !_context.response.status_code.between?(200, 208)
        raise ErrorResponseException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return BulkPostResponse.from_hash(decoded)
    end

    # Get Actions
    # @param [String] type Optional parameter: The type of the actions.
    # @param [String] user_id Optional parameter: The user id of the actions.
    # @param [String] item_id Optional parameter: The item id of the actions.
    # @param [String] older_than Optional parameter: Maxium timestamp of the actions. Valid times are in form of 1s, 1m, 1h, 1d, 1M, 1y, where 1 can be any integer, or a UNIX timestamp like 1443798195.
    # @param [Long] size Optional parameter: The number of the users response. Defaults to 10. Must be between 1 and 10.000 inclusive. This parameter must be string represetation of an integer like "1".
    # @param [Long] from Optional parameter: The number of users to be skipped for response. Defaults to 0. Must be bigger than or equal to 0. This parameter must be string represetation of an integer like "1".
    # @return ActionsResponse response from the API call
    def get_actions(type = nil,
                    user_id = nil,
                    item_id = nil,
                    older_than = nil,
                    size = nil,
                    from = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/actions'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'type' => type,
        'user_id' => user_id,
        'item_id' => item_id,
        'older_than' => older_than,
        'size' => size,
        'from' => from
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 429
        raise ErrorResponseException.new 'Too many requests.', _context
      elsif !_context.response.status_code.between?(200, 208)
        raise ErrorResponseException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return ActionsResponse.from_hash(decoded)
    end

    # Delete Actions
    # @param [String] type Optional parameter: The type of the actions.
    # @param [String] user_id Optional parameter: The user id of the actions.
    # @param [String] item_id Optional parameter: The item id of the actions.
    # @param [String] older_than Optional parameter: Delete all actions of a type older than the given timestamp or time. Valid times are in form of 1s, 1m, 1h, 1d, 1M, 1y, where 1 can be any integer, or a UNIX timestamp like 1443798195.
    # @return DeleteSuccessResponse response from the API call
    def delete_actions(type = nil,
                       user_id = nil,
                       item_id = nil,
                       older_than = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/actions'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'type' => type,
        'user_id' => user_id,
        'item_id' => item_id,
        'older_than' => older_than
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.delete _query_url, headers: _headers
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 400
        raise ErrorResponseException.new 'Required `user_id` or `item_id` parameters are missing from the request body.', _context
      elsif _context.response.status_code == 404
        raise DeleteErrorResponseException.new 'Delete actions not found.', _context
      elsif _context.response.status_code == 422
        raise ErrorResponseException.new 'No query parameter (`user_id`, `item_id`, or `older_than`) is given.  In order to delete all actionsdelete the type.', _context
      elsif _context.response.status_code == 429
        raise ErrorResponseException.new 'Too many requests.', _context
      elsif _context.response.status_code == 505
        raise ErrorResponseException.new 'Request timed out.', _context
      elsif !_context.response.status_code.between?(200, 208)
        raise ErrorResponseException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return DeleteSuccessResponse.from_hash(decoded)
    end
  end
end
