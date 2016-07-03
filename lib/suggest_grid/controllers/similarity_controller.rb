# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class SimilarityController < BaseController
    @@instance = SimilarityController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get similarity of two users.
    # @param [String] type Required parameter: Example: 
    # @param [String] user_id_1 Required parameter: Example: 
    # @param [String] user_id_2 Required parameter: Example: 
    # @return UserSimilarityResponse response from the API call
    def get_user_similarity(type, 
                            user_id_1, 
                            user_id_2)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/{type}/_similarity/_users/{user_id1}/{user_id2}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'type' => type,
        'user_id1' => user_id_1,
        'user_id2' => user_id_2
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
      if _response.status_code == 429
        raise APIException.new 'Too many requests.', 429, _response.raw_body
      elsif _response.status_code == 555
        raise APIException.new 'Recommendation model is not found for the given type.', 555, _response.raw_body
      elsif _response.status_code == 500
        raise APIException.new 'Unexpected internal error.', 500, _response.raw_body
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body)
      return UserSimilarityResponse.from_hash(decoded)
    end

    # Get similarity of two items.
    # @param [String] type Required parameter: Example: 
    # @param [String] item_id_1 Required parameter: Example: 
    # @param [String] item_id_2 Required parameter: Example: 
    # @return ItemSimilarityResponse response from the API call
    def get_item_similarity(type, 
                            item_id_1, 
                            item_id_2)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/{type}/_similarity/_items/{item_id1}/{item_id2}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'type' => type,
        'item_id1' => item_id_1,
        'item_id2' => item_id_2
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
      if _response.status_code == 429
        raise APIException.new 'Too many requests.', 429, _response.raw_body
      elsif _response.status_code == 555
        raise APIException.new 'Recommendation model is not found for the given type.', 555, _response.raw_body
      elsif _response.status_code == 500
        raise APIException.new 'Unexpected internal error.', 500, _response.raw_body
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body)
      return ItemSimilarityResponse.from_hash(decoded)
    end

    # Get similar users to a user.
    # @param [String] type Required parameter: Example: 
    # @param [String] user_id Required parameter: Example: 
    # @param [SimilarUsersBody] body Required parameter: Example: 
    # @return UsersResponse response from the API call
    def get_similar_users(type, 
                          user_id, 
                          body)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/{type}/_similar/_users/{user_id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'type' => type,
        'user_id' => user_id
      }

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
      if _response.status_code == 429
        raise APIException.new 'Too many requests.', 429, _response.raw_body
      elsif _response.status_code == 555
        raise APIException.new 'Recommendation model is not found for the given type.', 555, _response.raw_body
      elsif _response.status_code == 500
        raise APIException.new 'Unexpected internal error.', 500, _response.raw_body
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body)
      return UsersResponse.from_hash(decoded)
    end

    # Get similar items to an item.
    # @param [String] type Required parameter: Example: 
    # @param [String] item_id Required parameter: Example: 
    # @param [SimilarItemsBody] body Required parameter: Example: 
    # @return ItemsResponse response from the API call
    def get_similar_items(type, 
                          item_id, 
                          body)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/{type}/_similar/_items/{item_id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'type' => type,
        'item_id' => item_id
      }

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
      if _response.status_code == 429
        raise APIException.new 'Too many requests.', 429, _response.raw_body
      elsif _response.status_code == 500
        raise APIException.new '', 500, _response.raw_body
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body)
      return ItemsResponse.from_hash(decoded)
    end
  end
end
