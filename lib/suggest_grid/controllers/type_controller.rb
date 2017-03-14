# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class TypeController < BaseController
    @@instance = TypeController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Create a New Type
    # @param [String] type Required parameter: The name of the type.
    # @param [TypeRequestBody] settings Optional parameter: Optional settings for the rating parameter.
    # @return MessageResponse response from the API call
    def create_type(type, 
                    settings = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/types/{type}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'type' => type
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.put _query_url, headers: _headers, parameters: settings.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 402
        raise LimitExceededErrorResponseException.new 'Type limit reached.', _context
      elsif _context.response.status_code == 409
        raise ErrorResponseException.new 'Type already exists.', _context
      elsif _context.response.status_code == 422
        raise ErrorResponseException.new 'Rating type is not `implicit` or `explicit`.', _context
      elsif !_context.response.status_code.between?(200, 208)
        raise ErrorResponseException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return MessageResponse.from_hash(decoded)
    end

    # Get Properties of a Type
    # @param [String] type Required parameter: The name of the type to get properties.
    # @return GetTypeResponse response from the API call
    def get_type(type)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/types/{type}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'type' => type
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
        raise ErrorResponseException.new 'Type does not exists.', _context
      elsif !_context.response.status_code.between?(200, 208)
        raise ErrorResponseException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetTypeResponse.from_hash(decoded)
    end

    # Delete a Type
    # @param [String] type Required parameter: The name of the type to be deleted.
    # @return MessageResponse response from the API call
    def delete_type(type)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/types/{type}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'type' => type
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
      if _context.response.status_code == 404
        raise ErrorResponseException.new 'Action type does not exists.', _context
      elsif !_context.response.status_code.between?(200, 208)
        raise ErrorResponseException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return MessageResponse.from_hash(decoded)
    end

    # Get All Types
    # @return GetTypesResponse response from the API call
    def get_all_types

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/types'
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
        raise ErrorResponseException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetTypesResponse.from_hash(decoded)
    end

    # Delete All Types
    # @return MessageResponse response from the API call
    def delete_all_types

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/v1/types'
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
        raise ErrorResponseException.new 'Unexpected internal error.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return MessageResponse.from_hash(decoded)
    end
  end
end
