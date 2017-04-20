# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class MetadataController < BaseController
    @@instance = MetadataController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Posts a User
    # @param [Metadata] user Required parameter: The metadata to be saved. Metadata format has its restrictions.
    # @return MessageResponse response from the API call
    def post_user(user)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/users'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: user.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 400
        raise DetailedErrorResponseErrorException.new 'Metadata is invalid.', _context
      elsif !_context.response.status_code.between?(200, 208)
        raise ErrorResponseErrorException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return MessageResponse.from_hash(decoded)
    end

    # Posts Users
    # @param [Collection] users Required parameter: List of user metadata, whose size is limited to 10 thousand.
    # @return BulkPostResponse response from the API call
    def post_bulk_users(users)
        body = ''
        users.each do |user|
            body += "#{user.to_json}\n"
        end

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/users/_bulk'
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

    # Gets A User
    # @param [String] user_id Required parameter: The user id to get its metadata.
    # @return Metadata response from the API call
    def get_user(user_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/users/{user_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'user_id' => user_id
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
      if _context.response.status_code == 404
        raise ErrorResponseErrorException.new 'User does not exists.', _context
      elsif !_context.response.status_code.between?(200, 208)
        raise ErrorResponseErrorException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return Metadata.from_hash(decoded)
    end

    # Gets Users
    # @param [Long] size Optional parameter: The number of the users response. Defaults to 10. Must be between 1 and 10,000 inclusive. This parameter must be string represetation of an integer like "1".
    # @param [Long] from Optional parameter: The number of users to be skipped from the response. Defaults to 0. Must be bigger than or equal to 0. This parameter must be string represetation of an integer like "1".
    # @return UsersResponse response from the API call
    def get_users(size = nil,
                  from = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/users'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
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
      return UsersResponse.from_hash(decoded)
    end

    # Deletes a User
    # @param [String] user_id Required parameter: The user id to delete its metadata.
    # @return MessageResponse response from the API call
    def delete_user(user_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/users/{user_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'user_id' => user_id
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
      if _context.response.status_code == 0
        raise ErrorResponseErrorException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return MessageResponse.from_hash(decoded)
    end

    # Deletes All Users
    # @return MessageResponse response from the API call
    def delete_all_users

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/users'
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
      if _context.response.status_code == 0
        raise ErrorResponseErrorException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return MessageResponse.from_hash(decoded)
    end

    # Posts An Item
    # @param [Metadata] item Required parameter: The metadata to be saved. Metadata format has its restrictions.
    # @return MessageResponse response from the API call
    def post_item(item)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/items'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: item.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 400
        raise DetailedErrorResponseErrorException.new 'Metadata is invalid.', _context
      elsif !_context.response.status_code.between?(200, 208)
        raise ErrorResponseErrorException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return MessageResponse.from_hash(decoded)
    end

    # Posts Items
    # @param [Collection] items Required parameter: List of item metadata, whose size is limited to 10 thousand.
    # @return BulkPostResponse response from the API call
    def post_bulk_items(items)
        body = ''
        items.each do |item|
            body += "#{item.to_json}\n"
        end

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/items/_bulk'
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

    # Gets An Item
    # @param [String] item_id Required parameter: The item id to get its metadata.
    # @return Metadata response from the API call
    def get_item(item_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/items/{item_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'item_id' => item_id
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
      if _context.response.status_code == 404
        raise ErrorResponseErrorException.new 'Item does not exists.', _context
      elsif !_context.response.status_code.between?(200, 208)
        raise ErrorResponseErrorException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return Metadata.from_hash(decoded)
    end

    # Gets Items
    # @param [Long] size Optional parameter: The number of the users response. Defaults to 10. Must be between 1 and 10,000 inclusive. This parameter must be string represetation of an integer like "1".
    # @param [Long] from Optional parameter: The number of users to be skipped from the response. Defaults to 0. Must be bigger than or equal to 0. This parameter must be string represetation of an integer like "1".
    # @return ItemsResponse response from the API call
    def get_items(size = nil,
                  from = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/items'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
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
      return ItemsResponse.from_hash(decoded)
    end

    # Delete An Item
    # @param [String] item_id Required parameter: The item id to delete its metadata.
    # @return MessageResponse response from the API call
    def delete_item(item_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/items/{item_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'item_id' => item_id
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
      if _context.response.status_code == 0
        raise ErrorResponseErrorException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return MessageResponse.from_hash(decoded)
    end

    # Deletes All Items
    # @return MessageResponse response from the API call
    def delete_all_items

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/items'
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
      if _context.response.status_code == 0
        raise ErrorResponseErrorException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return MessageResponse.from_hash(decoded)
    end
  end
end
