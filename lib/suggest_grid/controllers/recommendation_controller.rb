# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class RecommendationController < BaseController
    @@instance = RecommendationController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get Recommended Users
    # @param [GetRecommendedUsersBody] query Required parameter: The query for recommended users.
    # @return UsersResponse response from the API call
    def get_recommended_users(query)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/recommend/users'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, headers: _headers, parameters: query.to_json

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # endpoint error handling using HTTP status codes.
      if _context.response.status_code == 400
        raise ErrorResponseException.new '400 - Request body is invalid.', _context
      elsif _context.response.status_code == 422
        raise ErrorResponseException.new '422 - Required parameters are missing.', _context
      elsif _context.response.status_code == 429
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

    # Get Recommended Items
    # @param [GetRecommendedItemsBody] query Required parameter: The query for recommended items.
    # @return ItemsResponse response from the API call
    def get_recommended_items(query)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/recommend/items'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, headers: _headers, parameters: query.to_json

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # endpoint error handling using HTTP status codes.
      if _context.response.status_code == 400
        raise ErrorResponseException.new '400 - Request body is invalid.', _context
      elsif _context.response.status_code == 422
        raise ErrorResponseException.new '422 - Required parameters are missing.', _context
      elsif _context.response.status_code == 429
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
  end
end
