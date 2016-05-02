# This file was automatically generated for SuggestGrid by APIMATIC v2.0 on 05/02/2016

module SuggestGrid
  class RecommendationController
    @@instance = RecommendationController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Predict a users score for an item.
    # @param [String] item_id Required parameter: TODO: type description here
    # @param [String] space Required parameter: TODO: type description here
    # @param [String] type Required parameter: TODO: type description here
    # @param [String] user_id Required parameter: TODO: type description here
    # @return PredictionResponse response from the API call
    def predict(item_id, space, type, user_id)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/v1/{space}/{type}/_predict/{user_id}/{item_id}'

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        'item_id' => item_id,
        'space' => space,
        'type' => type,
        'user_id' => user_id
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        'user-agent' => 'SUGGESTGRID',
        'accept' => 'application/json'
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers: headers, auth: { :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Error handling using HTTP status codes
      if response.code == 400
        raise APIException.new 'Request body is missing.', 400, response.raw_body
      elsif response.code == 429
        raise APIException.new 'Too many requests.', 429, response.raw_body
      elsif response.code == 555
        raise APIException.new 'Recommendation model is not found for the given space and type.', 555, response.raw_body
      elsif response.code == 500
        raise APIException.new 'Unexpected internal error.', 500, response.raw_body
      elsif !response.code.between?(200, 206) # [200,206] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', response.code, response.raw_body
      end

      response.body
    end

    # Recommend users for the given body parameters.
    # @param [RecommendUsersBody] body Required parameter: TODO: type description here
    # @param [String] space Required parameter: TODO: type description here
    # @param [String] type Required parameter: TODO: type description here
    # @return UsersResponse response from the API call
    def recommend_users(body, space, type)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/v1/{space}/{type}/_recommend/_users'

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        'space' => space,
        'type' => type
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        'user-agent' => 'SUGGESTGRID',
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers: headers, parameters: body.to_json, auth: { :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Error handling using HTTP status codes
      if response.code == 400
        raise APIException.new 'Request body is missing.', 400, response.raw_body
      elsif response.code == 429
        raise APIException.new 'Too many requests.', 429, response.raw_body
      elsif response.code == 555
        raise APIException.new 'Recommendation model is not found for the given space and type.', 555, response.raw_body
      elsif response.code == 500
        raise APIException.new 'Unexpected internal error.', 500, response.raw_body
      elsif !response.code.between?(200, 206) # [200,206] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', response.code, response.raw_body
      end

      response.body
    end

    # Recommend items for the given body parameters.
    # @param [RecommendItemsBody] body Required parameter: TODO: type description here
    # @param [String] space Required parameter: TODO: type description here
    # @param [String] type Required parameter: TODO: type description here
    # @return ItemsResponse response from the API call
    def recommend_items(body, space, type)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/v1/{space}/{type}/_recommend/_items'

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        'space' => space,
        'type' => type
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        'user-agent' => 'SUGGESTGRID',
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers: headers, parameters: body.to_json, auth: { :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Error handling using HTTP status codes
      if response.code == 400
        raise APIException.new 'Request body is missing.', 400, response.raw_body
      elsif response.code == 429
        raise APIException.new 'Too many requests.', 429, response.raw_body
      elsif response.code == 555
        raise APIException.new 'Recommendation model is not found for the given space and type.', 555, response.raw_body
      elsif response.code == 500
        raise APIException.new 'Unexpected internal error.', 500, response.raw_body
      elsif !response.code.between?(200, 206) # [200,206] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', response.code, response.raw_body
      end

      response.body
    end
  end
end
