# This file was automatically generated for SuggestGrid by APIMATIC v2.0 on 05/02/2016

module SuggestGrid
  class ActionController
    @@instance = ActionController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Create an action.
    # @param [Action] body Required parameter: TODO: type description here
    # @param [String] space Required parameter: TODO: type description here
    # @param [String] type Required parameter: TODO: type description here
    # @return MessageResponse response from the API call
    def create_action(body, space, type)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/v1/{space}/{type}/_action'

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
        raise APIException.new 'Required `user_id` or `item_id` parameters are missing from the request body.', 400, response.raw_body
      elsif response.code == 402
        raise APIException.new 'Action limit exceeded.', 402, response.raw_body
      elsif response.code == 429
        raise APIException.new 'Too many requests.', 429, response.raw_body
      elsif response.code == 500
        raise APIException.new 'Unexpected internal error.', 500, response.raw_body
      elsif !response.code.between?(200, 206) # [200,206] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', response.code, response.raw_body
      end

      response.body
    end

    # Deletes actions.
    # @param [ActionDeleteBody] body Required parameter: TODO: type description here
    # @param [String] space Required parameter: TODO: type description here
    # @param [String] type Required parameter: TODO: type description here
    # @return MessageResponse response from the API call
    def delete_action(body, space, type)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/v1/{space}/{type}/_action'

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
      response = Unirest.delete query_url, headers: headers, parameters: body.to_json, auth: { :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Error handling using HTTP status codes
      if response.code == 400
        raise APIException.new 'Required `user_id` or `item_id` parameters are missing from the request body.', 400, response.raw_body
      elsif response.code == 429
        raise APIException.new 'Too many requests.', 429, response.raw_body
      elsif response.code == 500
        raise APIException.new 'Unexpected internal error.', 500, response.raw_body
      elsif !response.code.between?(200, 206) # [200,206] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', response.code, response.raw_body
      end

      response.body
    end

    # Delete all actions of a type.
    # @param [String] space Required parameter: TODO: type description here
    # @param [String] type Required parameter: TODO: type description here
    # @return MessageResponse response from the API call
    def delete_all_actions(space, type)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/v1/{space}/{type}/_action/_all'

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

    # Delete all actions of a type older than the given timestamp or time.
    # @param [String] space Required parameter: TODO: type description here
    # @param [String] time Required parameter: TODO: type description here
    # @param [String] type Required parameter: TODO: type description here
    # @return MessageResponse response from the API call
    def delete_older_actions(space, time, type)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/v1/{space}/{type}/_action/_older_than/{time}'

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        'space' => space,
        'time' => time,
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
      response = Unirest.delete query_url, headers: headers, auth: { :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Error handling using HTTP status codes
      if response.code == 400
        raise APIException.new 'The given timestamp is in the future.', 400, response.raw_body
      elsif response.code == 429
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
