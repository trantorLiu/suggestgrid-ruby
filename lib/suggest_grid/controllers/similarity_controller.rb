# This file was automatically generated for SuggestGrid by APIMATIC v2.0 on 05/02/2016

module SuggestGrid
  class SimilarityController
    @@instance = SimilarityController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get similarity of two users.
    # @param [String] space Required parameter: TODO: type description here
    # @param [String] type Required parameter: TODO: type description here
    # @param [String] user_id_1 Required parameter: TODO: type description here
    # @param [String] user_id_2 Required parameter: TODO: type description here
    # @return UserSimilarityResponse response from the API call
    def get_user_similarity(space, type, user_id_1, user_id_2)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/v1/{space}/{type}/_similarity/_users/{user_id1}/{user_id2}'

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        'space' => space,
        'type' => type,
        'user_id1' => user_id_1,
        'user_id2' => user_id_2
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
      if response.code == 429
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

    # Get similarity of two items.
    # @param [String] item_id_1 Required parameter: TODO: type description here
    # @param [String] item_id_2 Required parameter: TODO: type description here
    # @param [String] space Required parameter: TODO: type description here
    # @param [String] type Required parameter: TODO: type description here
    # @return ItemSimilarityResponse response from the API call
    def get_item_similarity(item_id_1, item_id_2, space, type)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/v1/{space}/{type}/_similarity/_items/{item_id1}/{item_id2}'

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        'item_id1' => item_id_1,
        'item_id2' => item_id_2,
        'space' => space,
        'type' => type
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
      if response.code == 429
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

    # Get similar users to an user.
    # @param [SimilarUsersBody] body Required parameter: TODO: type description here
    # @param [String] space Required parameter: TODO: type description here
    # @param [String] type Required parameter: TODO: type description here
    # @param [String] user_id Required parameter: TODO: type description here
    # @return UsersResponse response from the API call
    def get_similar_users(body, space, type, user_id)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/v1/{space}/{type}/_similar/_users/{user_id}'

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        'space' => space,
        'type' => type,
        'user_id' => user_id
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
      if response.code == 429
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

    # Get similar items to an item.
    # @param [SimilarItemsBody] body Required parameter: TODO: type description here
    # @param [String] item_id Required parameter: TODO: type description here
    # @param [String] space Required parameter: TODO: type description here
    # @param [String] type Required parameter: TODO: type description here
    # @return ItemsResponse response from the API call
    def get_similar_items(body, item_id, space, type)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/v1/{space}/{type}/_similar/_items/{item_id}'

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        'item_id' => item_id,
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
      if response.code == 429
        raise APIException.new 'Too many requests.', 429, response.raw_body
      elsif response.code == 500
        raise APIException.new '', 500, response.raw_body
      elsif !response.code.between?(200, 206) # [200,206] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', response.code, response.raw_body
      end

      response.body
    end
  end
end
