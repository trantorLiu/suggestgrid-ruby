# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ) on 05/21/2016

module SuggestGrid
  class RecommendationController < BaseController
    @@instance = RecommendationController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Predict a users score for an item.
    # @param [String] item_id Required parameter: Example: 
    # @param [String] type Required parameter: Example: 
    # @param [String] user_id Required parameter: Example: 
    # @return PredictionResponse response from the API call
    def predict(item_id, 
                type, 
                user_id)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/{type}/_predict/{user_id}/{item_id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'item_id' => item_id,
        'type' => type,
        'user_id' => user_id
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
      if _response.code == 400
        raise APIException.new 'Request body is missing.', 400, _response.body
      elsif _response.code == 429
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
          PredictionResponse.from_hash(_response.body)
        rescue Exception
          raise APIException.new "Invalid JSON returned.", _response.code, _response.body
        end
      end
    end

    # Recommend users for the given body parameters.
    # @param [RecommendUsersBody] body Required parameter: Example: 
    # @param [String] type Required parameter: Example: 
    # @return UsersResponse response from the API call
    def recommend_users(body, 
                        type)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/{type}/_recommend/_users'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
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
      if _response.code == 400
        raise APIException.new 'Request body is missing.', 400, _response.body
      elsif _response.code == 429
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

    # Recommend items for the given body parameters.
    # @param [RecommendItemsBody] body Required parameter: Example: 
    # @param [String] type Required parameter: Example: 
    # @return ItemsResponse response from the API call
    def recommend_items(body, 
                        type)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/{type}/_recommend/_items'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
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
      if _response.code == 400
        raise APIException.new 'Request body is missing.', 400, _response.body
      elsif _response.code == 429
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
          ItemsResponse.from_hash(_response.body)
        rescue Exception
          raise APIException.new "Invalid JSON returned.", _response.code, _response.body
        end
      end
    end
  end
end
