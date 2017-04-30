# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class ActionController < BaseController
    @@instance = ActionController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Posts an Action
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
        raise ErrorResponseErrorException.new 'Required user id or item id parameters are missing from the request.', _context
      elsif _context.response.status_code == 402
        raise ErrorResponseErrorException.new 'Action limit exceeded.', _context
      elsif _context.response.status_code == 404
        raise ErrorResponseErrorException.new 'Action type does not exists.', _context
      elsif !_context.response.status_code.between?(200, 208)
        raise ErrorResponseErrorException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return MessageResponse.from_hash(decoded)
    end

    # Posts Actions
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
        raise ErrorResponseErrorException.new 'Body is missing.', _context
      elsif _context.response.status_code == 402
        raise ErrorResponseErrorException.new 'Action limit exceeded.', _context
      elsif _context.response.status_code == 404
        raise ErrorResponseErrorException.new 'Action type does not exists.', _context
      elsif _context.response.status_code == 413
        raise ErrorResponseErrorException.new 'Bulk request maximum line count exceeded.', _context
      elsif !_context.response.status_code.between?(200, 208)
        raise ErrorResponseErrorException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return BulkPostResponse.from_hash(decoded)
    end

    # Gets Actions
    # @param [String] type Optional parameter: Get actions of a type.
    # @param [String] user_id Optional parameter: Get actions of a user id.
    # @param [String] item_id Optional parameter: Get actions of an item id.
    # @param [String] older_than Optional parameter: Get actions older than the given duration, or the given time number. Could be a ISO 8601 duration, or a Unix time number. Specifications are available at https://en.wikipedia.org/wiki/ISO_8601#Durations, or https://en.wikipedia.org/wiki/Unix_time.
    # @param [Long] size Optional parameter: The number of the users response. Defaults to 10. Must be between 1 and 10,000 inclusive. This parameter must be string represetation of an integer like "1".
    # @param [Long] from Optional parameter: The number of users to be skipped from the response. Defaults to 0. Must be bigger than or equal to 0. This parameter must be string represetation of an integer like "1".
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
      if _context.response.status_code == 0
        raise ErrorResponseErrorException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return ActionsResponse.from_hash(decoded)
    end

    # Delete Actions
    # @param [String] type Required parameter: Delete actions of a type. This parameter and at least one other parameter is required.
    # @param [String] user_id Optional parameter: Delete actions of a user id.
    # @param [String] item_id Optional parameter: Delete actions of an item id.
    # @param [String] older_than Optional parameter: Delete actions older than the given duration, or the given time number. Could be a ISO 8601 duration, or a Unix time number. Specifications are available at https://en.wikipedia.org/wiki/ISO_8601#Durations, or https://en.wikipedia.org/wiki/Unix_time.
    # @return DeleteSuccessResponse response from the API call
    def delete_actions(type,
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
        raise ErrorResponseErrorException.new 'Required user id or item id parameters are missing.', _context
      elsif _context.response.status_code == 404
        raise DeleteErrorResponseErrorException.new 'Delete actions not found.', _context
      elsif _context.response.status_code == 422
        raise ErrorResponseErrorException.new 'No query parameter (user id, item id, or older than) is given. qIn order to delete all actionsdelete the type.', _context
      elsif _context.response.status_code == 505
        raise ErrorResponseErrorException.new 'Request timed out.', _context
      elsif !_context.response.status_code.between?(200, 208)
        raise ErrorResponseErrorException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return DeleteSuccessResponse.from_hash(decoded)
    end
  end
end
