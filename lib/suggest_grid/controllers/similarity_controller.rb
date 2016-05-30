# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ) on 05/30/2016

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

      # invoke the API call request to fetch the response
      _response = Unirest.get _query_url, headers: _headers, auth: { :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Endpoint error handling using HTTP status codes.
      if _response.code == 429
        raise APIException.new 'Too many requests.', 429, _response.body
      elsif _response.code == 555
        raise APIException.new 'Recommendation model is not found for the given type.', 555, _response.body
      elsif _response.code == 500
        raise APIException.new 'Unexpected internal error.', 500, _response.body
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Try to cast response to desired type
      if _response.body.instance_of? Hash
        begin
          UserSimilarityResponse.from_hash(_response.body)
        rescue Exception
          raise APIException.new "Invalid JSON returned.", _response.code, _response.body
        end
      end
    end

    # Get similarity of two items.
    # @param [String] item_id_1 Required parameter: Example: 
    # @param [String] item_id_2 Required parameter: Example: 
    # @param [String] type Required parameter: Example: 
    # @return ItemSimilarityResponse response from the API call
    def get_item_similarity(item_id_1, 
                            item_id_2, 
                            type)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/{type}/_similarity/_items/{item_id1}/{item_id2}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'item_id1' => item_id_1,
        'item_id2' => item_id_2,
        'type' => type
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'SUGGESTGRID',
        'accept' => 'application/json'
      }

      # invoke the API call request to fetch the response
      _response = Unirest.get _query_url, headers: _headers, auth: { :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Endpoint error handling using HTTP status codes.
      if _response.code == 429
        raise APIException.new 'Too many requests.', 429, _response.body
      elsif _response.code == 555
        raise APIException.new 'Recommendation model is not found for the given type.', 555, _response.body
      elsif _response.code == 500
        raise APIException.new 'Unexpected internal error.', 500, _response.body
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Try to cast response to desired type
      if _response.body.instance_of? Hash
        begin
          ItemSimilarityResponse.from_hash(_response.body)
        rescue Exception
          raise APIException.new "Invalid JSON returned.", _response.code, _response.body
        end
      end
    end

    # Get similar users to a user.
    # @param [SimilarUsersBody] body Required parameter: Example: 
    # @param [String] type Required parameter: Example: 
    # @param [String] user_id Required parameter: Example: 
    # @return UsersResponse response from the API call
    def get_similar_users(body, 
                          type, 
                          user_id)
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

      # invoke the API call request to fetch the response
      _response = Unirest.post _query_url, headers: _headers, parameters: body.to_json, auth: { :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Endpoint error handling using HTTP status codes.
      if _response.code == 429
        raise APIException.new 'Too many requests.', 429, _response.body
      elsif _response.code == 555
        raise APIException.new 'Recommendation model is not found for the given type.', 555, _response.body
      elsif _response.code == 500
        raise APIException.new 'Unexpected internal error.', 500, _response.body
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Try to cast response to desired type
      if _response.body.instance_of? Hash
        begin
          UsersResponse.from_hash(_response.body)
        rescue Exception
          raise APIException.new "Invalid JSON returned.", _response.code, _response.body
        end
      end
    end

    # Get similar items to an item.
    # @param [SimilarItemsBody] body Required parameter: Example: 
    # @param [String] item_id Required parameter: Example: 
    # @param [String] type Required parameter: Example: 
    # @return ItemsResponse response from the API call
    def get_similar_items(body, 
                          item_id, 
                          type)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/{type}/_similar/_items/{item_id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'item_id' => item_id,
        'type' => type
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'SUGGESTGRID',
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # invoke the API call request to fetch the response
      _response = Unirest.post _query_url, headers: _headers, parameters: body.to_json, auth: { :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Endpoint error handling using HTTP status codes.
      if _response.code == 429
        raise APIException.new 'Too many requests.', 429, _response.body
      elsif _response.code == 500
        raise APIException.new '', 500, _response.body
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Try to cast response to desired type
      if _response.body.instance_of? Hash
        begin
          ItemsResponse.from_hash(_response.body)
        rescue Exception
          raise APIException.new "Invalid JSON returned.", _response.code, _response.body
        end
      end
    end
  end
end
