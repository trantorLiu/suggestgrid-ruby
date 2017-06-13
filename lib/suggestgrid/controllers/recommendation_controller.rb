# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class RecommendationController < BaseController
    @@instance = RecommendationController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Gets Recommended Users
    # @param [GetRecommendedUsersBody] query Required parameter: Query for recommended users.
    # @return UsersResponse response from the API call
    def get_recommended_users(query)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/recommend/users'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: query.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 400
        raise ErrorResponseErrorException.new 'Request body is invalid.', _context
      elsif _context.response.status_code == 404
        raise ErrorResponseErrorException.new 'At least one type in the request does not exist.', _context
      elsif _context.response.status_code == 422
        raise ErrorResponseErrorException.new 'Required parameters are missing.', _context
      elsif !_context.response.status_code.between?(200, 208)
        raise ErrorResponseErrorException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return UsersResponse.from_hash(decoded)
    end

    # Gets Recommended Items
    # @param [GetRecommendedItemsBody] query Required parameter: Query for recommended items.
    # @return ItemsResponse response from the API call
    def get_recommended_items(query)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/recommend/items'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: query.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 400
        raise ErrorResponseErrorException.new 'Request body is invalid.', _context
      elsif _context.response.status_code == 404
        raise ErrorResponseErrorException.new 'At least one type in the request does not exist.', _context
      elsif _context.response.status_code == 422
        raise ErrorResponseErrorException.new 'Required parameters are missing.', _context
      elsif !_context.response.status_code.between?(200, 208)
        raise ErrorResponseErrorException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return ItemsResponse.from_hash(decoded)
    end
  end
end
