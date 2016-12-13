# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class MetadataController < BaseController
    @@instance = MetadataController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get A User
    # @param [String] user_id Required parameter: The user id to delete its metadata.
    # @return Metadata response from the API call
    def get_user(user_id)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/users/{user_id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'user_id' => user_id
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # create the HttpRequest object for the call
      _request = @http_client.get _query_url, headers: _headers

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # endpoint error handling using HTTP status codes.
      if _context.response.status_code == 404
        raise ErrorResponseException.new '404 - User not found.', _context
      elsif _context.response.status_code == 500
        raise APIException.new '500 - Unexpected internal error.', _context
      end

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return Metadata.from_hash(decoded)
    end

    # Delete a User
    # @param [String] user_id Required parameter: The user id to delete its metadata.
    # @return MessageResponse response from the API call
    def delete_user(user_id)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/users/{user_id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'user_id' => user_id
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # create the HttpRequest object for the call
      _request = @http_client.delete _query_url, headers: _headers

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # endpoint error handling using HTTP status codes.
      if _context.response.status_code == 429
        raise ErrorResponseException.new '429 - Too many requests.', _context
      elsif _context.response.status_code == 500
        raise APIException.new '500 - Unexpected internal error.', _context
      end

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return MessageResponse.from_hash(decoded)
    end

    # Get Users
    # @param [Integer] size Optional parameter: The number of the users response. Defaults to 10. Must be between 1 and 10.000 inclusive. This parameter must be string represetation of an integer like "1".
    # @param [Integer] from Optional parameter: The number of users to be skipped for response. Defaults to 0. Must be bigger than or equal to 0. This parameter must be string represetation of an integer like "1".
    # @return UsersResponse response from the API call
    def get_users(size = nil,
                  from = nil)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/users'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'size' => size,
        'from' => from
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # create the HttpRequest object for the call
      _request = @http_client.get _query_url, headers: _headers

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # endpoint error handling using HTTP status codes.
      if _context.response.status_code == 429
        raise ErrorResponseException.new '429 - Too many requests.', _context
      elsif _context.response.status_code == 500
        raise APIException.new '500 - Unexpected internal error.', _context
      end

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return UsersResponse.from_hash(decoded)
    end

    # Post a User
    # @param [Metadata] user Required parameter: The metadata to be saved. Metadata format has its restrictions.
    # @return MessageResponse response from the API call
    def post_user(user)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/users'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, headers: _headers, parameters: user.to_json

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # endpoint error handling using HTTP status codes.
      if _context.response.status_code == 400
        raise DetailedErrorResponseException.new '400 - Metadata is invalid.', _context
      elsif _context.response.status_code == 429
        raise ErrorResponseException.new '429 - Too many requests.', _context
      elsif _context.response.status_code == 500
        raise APIException.new '500 - Unexpected internal error.', _context
      end

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return MessageResponse.from_hash(decoded)
    end

    # Delete All Users
    # @return MessageResponse response from the API call
    def delete_all_users

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/users'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # create the HttpRequest object for the call
      _request = @http_client.delete _query_url, headers: _headers

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # endpoint error handling using HTTP status codes.
      if _context.response.status_code == 429
        raise ErrorResponseException.new '429 - Too many requests.', _context
      elsif _context.response.status_code == 500
        raise APIException.new '500 - Unexpected internal error.', _context
      end

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return MessageResponse.from_hash(decoded)
    end

    # Get An Item
    # @param [String] item_id Required parameter: The item id to delete its metadata.
    # @return Metadata response from the API call
    def get_item(item_id)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/items/{item_id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'item_id' => item_id
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # create the HttpRequest object for the call
      _request = @http_client.get _query_url, headers: _headers

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # endpoint error handling using HTTP status codes.
      if _context.response.status_code == 404
        raise ErrorResponseException.new '404 - Item not found.', _context
      elsif _context.response.status_code == 500
        raise APIException.new '500 - Unexpected internal error.', _context
      end

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return Metadata.from_hash(decoded)
    end

    # Delete An Item
    # @param [String] item_id Required parameter: The item id to delete its metadata.
    # @return MessageResponse response from the API call
    def delete_item(item_id)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/items/{item_id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'item_id' => item_id
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # create the HttpRequest object for the call
      _request = @http_client.delete _query_url, headers: _headers

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # endpoint error handling using HTTP status codes.
      if _context.response.status_code == 429
        raise ErrorResponseException.new '429 - Too many requests.', _context
      elsif _context.response.status_code == 500
        raise APIException.new '500 - Unexpected internal error.', _context
      end

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return MessageResponse.from_hash(decoded)
    end

    # Get Items
    # @param [Integer] size Optional parameter: The number of the users response. Defaults to 10. Must be between 1 and 10.000 inclusive. This parameter must be string represetation of an integer like "1".
    # @param [Integer] from Optional parameter: The number of users to be skipped for response. Defaults to 0. Must be bigger than or equal to 0. This parameter must be string represetation of an integer like "1".
    # @return ItemsResponse response from the API call
    def get_items(size = nil,
                  from = nil)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/items'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'size' => size,
        'from' => from
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # create the HttpRequest object for the call
      _request = @http_client.get _query_url, headers: _headers

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # endpoint error handling using HTTP status codes.
      if _context.response.status_code == 429
        raise ErrorResponseException.new '429 - Too many requests.', _context
      elsif _context.response.status_code == 500
        raise APIException.new '500 - Unexpected internal error.', _context
      end

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return ItemsResponse.from_hash(decoded)
    end

    # Post an Item
    # @param [Metadata] item Required parameter: The metadata to be saved. Metadata format has its restrictions.
    # @return MessageResponse response from the API call
    def post_item(item)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/items'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, headers: _headers, parameters: item.to_json

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # endpoint error handling using HTTP status codes.
      if _context.response.status_code == 400
        raise DetailedErrorResponseException.new '400 - Metadata is invalid.', _context
      elsif _context.response.status_code == 429
        raise ErrorResponseException.new '429 - Too many requests.', _context
      elsif _context.response.status_code == 500
        raise APIException.new '500 - Unexpected internal error.', _context
      end

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return MessageResponse.from_hash(decoded)
    end

    # Delete All Items
    # @return MessageResponse response from the API call
    def delete_all_items

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/items'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # create the HttpRequest object for the call
      _request = @http_client.delete _query_url, headers: _headers

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # endpoint error handling using HTTP status codes.
      if _context.response.status_code == 429
        raise ErrorResponseException.new '429 - Too many requests.', _context
      elsif _context.response.status_code == 500
        raise APIException.new '500 - Unexpected internal error.', _context
      end

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return MessageResponse.from_hash(decoded)
    end

    # Post Bulk Users
    # @param [Collection] users Required parameter: List of user metadata, whose size is limited to 10 thousand.
    # @return BulkPostResponse response from the API call
    def post_bulk_users(users)
        body = ''
        users.each do |user|
            body += "#{user.to_json}\n"
        end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/users/_bulk'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'text/plain; charset=utf-8'
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, headers: _headers, parameters: body

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # endpoint error handling using HTTP status codes.
      if _context.response.status_code == 400
        raise ErrorResponseException.new '400 - Body is missing.', _context
      elsif _context.response.status_code == 429
        raise ErrorResponseException.new '429 - Too many requests.', _context
      elsif _context.response.status_code == 500
        raise APIException.new '500 - Unexpected internal error.', _context
      end

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return BulkPostResponse.from_hash(decoded)
    end

    # Post Bulk Items
    # @param [Collection] items Required parameter: List of item metadata, whose size is limited to 10 thousand.
    # @return BulkPostResponse response from the API call
    def post_bulk_items(items)
        body = ''
        items.each do |item|
            body += "#{item.to_json}\n"
        end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/items/_bulk'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'text/plain; charset=utf-8'
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, headers: _headers, parameters: body

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # endpoint error handling using HTTP status codes.
      if _context.response.status_code == 400
        raise ErrorResponseException.new '400 - Body is missing.', _context
      elsif _context.response.status_code == 429
        raise ErrorResponseException.new '429 - Too many requests.', _context
      elsif _context.response.status_code == 500
        raise APIException.new '500 - Unexpected internal error.', _context
      end

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return BulkPostResponse.from_hash(decoded)
    end
  end
end
