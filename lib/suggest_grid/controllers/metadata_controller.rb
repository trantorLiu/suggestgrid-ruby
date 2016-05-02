# This file was automatically generated for SuggestGrid by APIMATIC v2.0 on 05/02/2016

module SuggestGrid
  class MetadataController
    @@instance = MetadataController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Create an user metadata.
    # @param [Metadata] body Required parameter: TODO: type description here
    # @param [String] space Required parameter: TODO: type description here
    # @return MessageResponse response from the API call
    def create_user_metadata(body, space)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/v1/{space}/_user'

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        'space' => space
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
        raise APIException.new 'Metadata is invalid.', 400, response.raw_body
      elsif response.code == 429
        raise APIException.new 'Too many requests.', 429, response.raw_body
      elsif response.code == 500
        raise APIException.new 'Unexpected internal error.', 500, response.raw_body
      elsif !response.code.between?(200, 206) # [200,206] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', response.code, response.raw_body
      end

      response.body
    end

    # Delete an user metadata.
    # @param [String] space Required parameter: TODO: type description here
    # @param [String] user_id Required parameter: The user_id to delete its metadata.
    # @return MessageResponse response from the API call
    def delete_an_user_metadata(space, user_id)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/v1/{space}/_user/{user_id}'

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        'space' => space,
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
      response = Unirest.delete query_url, headers: headers, auth: { :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Error handling using HTTP status codes
      if response.code == 429
        raise APIException.new 'Too many requests.', 429, response.raw_body
      elsif response.code == 500
        raise APIException.new 'Unexpected internal error.', 500, response.raw_body
      elsif !response.code.between?(200, 206) # [200,206] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', response.code, response.raw_body
      end

      response.body
    end

    # Delete all user metadatas.
    # @param [String] space Required parameter: TODO: type description here
    # @return MessageResponse response from the API call
    def delete_all_user_metadata(space)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/v1/{space}/_user/_all'

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        'space' => space
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        'user-agent' => 'SUGGESTGRID',
        'accept' => 'application/json'
      }

      # invoke the API call request to fetch the response
      response = Unirest.delete query_url, headers: headers, auth: { :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Error handling using HTTP status codes
      if response.code == 429
        raise APIException.new 'Too many requests.', 429, response.raw_body
      elsif response.code == 500
        raise APIException.new 'Unexpected internal error.', 500, response.raw_body
      elsif !response.code.between?(200, 206) # [200,206] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', response.code, response.raw_body
      end

      response.body
    end

    # Create an item metadata.
    # @param [Metadata] body Required parameter: TODO: type description here
    # @param [String] space Required parameter: TODO: type description here
    # @return MessageResponse response from the API call
    def create_item_metadata(body, space)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/v1/{space}/_item'

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        'space' => space
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
        raise APIException.new 'Metadata is invalid.', 400, response.raw_body
      elsif response.code == 429
        raise APIException.new 'Too many requests.', 429, response.raw_body
      elsif response.code == 500
        raise APIException.new 'Unexpected internal error.', 500, response.raw_body
      elsif !response.code.between?(200, 206) # [200,206] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', response.code, response.raw_body
      end

      response.body
    end

    # Delete an item metadata.
    # @param [String] item_id Required parameter: The item_id to delete its metadata.
    # @param [String] space Required parameter: TODO: type description here
    # @return MessageResponse response from the API call
    def delete_an_item_metadata(item_id, space)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/v1/{space}/_item/{item_id}'

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        'item_id' => item_id,
        'space' => space
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        'user-agent' => 'SUGGESTGRID',
        'accept' => 'application/json'
      }

      # invoke the API call request to fetch the response
      response = Unirest.delete query_url, headers: headers, auth: { :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Error handling using HTTP status codes
      if response.code == 429
        raise APIException.new 'Too many requests.', 429, response.raw_body
      elsif response.code == 500
        raise APIException.new 'Unexpected internal error.', 500, response.raw_body
      elsif !response.code.between?(200, 206) # [200,206] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', response.code, response.raw_body
      end

      response.body
    end

    # Delete all item metadatas of a space.
    # @param [String] space Required parameter: TODO: type description here
    # @return MessageResponse response from the API call
    def delete_all_item_metadata(space)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/v1/{space}/_item/_all'

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        'space' => space
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        'user-agent' => 'SUGGESTGRID',
        'accept' => 'application/json'
      }

      # invoke the API call request to fetch the response
      response = Unirest.delete query_url, headers: headers, auth: { :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Error handling using HTTP status codes
      if response.code == 429
        raise APIException.new 'Too many requests.', 429, response.raw_body
      elsif response.code == 500
        raise APIException.new 'Unexpected internal error.', 500, response.raw_body
      elsif !response.code.between?(200, 206) # [200,206] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', response.code, response.raw_body
      end

      response.body
    end
  end
end
