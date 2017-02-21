# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class TypeController < BaseController
    @@instance = TypeController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get All Types
    # @return GetTypesResponse response from the API call
    def get_all_types

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/types'

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
      return GetTypesResponse.from_hash(decoded)
    end

    # Delete All Types
    # @return MessageResponse response from the API call
    def delete_all_types

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/types'

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

    # Get Properties of a Type
    # @param [String] type Required parameter: The name of the type to get properties.
    # @return GetTypeResponse response from the API call
    def get_type(type)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/types/{type}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'type' => type
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
        raise ErrorResponseException.new '404 - Type not found.', _context
      elsif _context.response.status_code == 429
        raise ErrorResponseException.new '429 - Too many requests.', _context
      elsif _context.response.status_code == 500
        raise APIException.new '500 - Unexpected internal error.', _context
      end

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetTypeResponse.from_hash(decoded)
    end

    # Create a New Type
    # @param [String] type Required parameter: The name of the type.
    # @param [TypeRequestBody] settings Optional parameter: Optional settings for the rating parameter.
    # @return MessageResponse response from the API call
    def create_type(type, 
                    settings = nil)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/types/{type}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'type' => type
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # create the HttpRequest object for the call
      _request = @http_client.put _query_url, headers: _headers, parameters: settings.to_json

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # endpoint error handling using HTTP status codes.
      if _context.response.status_code == 402
        raise LimitExceededErrorResponseException.new '402 - Type limit reached.', _context
      elsif _context.response.status_code == 409
        raise ErrorResponseException.new '409 - Type already exists.', _context
      elsif _context.response.status_code == 422
        raise ErrorResponseException.new '422 - Rating type is not `implicit` or `explicit`.', _context
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

    # Delete a Type
    # @param [String] type Required parameter: The name of the type to be deleted.
    # @return MessageResponse response from the API call
    def delete_type(type)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/types/{type}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'type' => type
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
      if _context.response.status_code == 404
        raise ErrorResponseException.new '404 - Type does not exists.', _context
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
  end
end
