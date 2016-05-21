# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ) on 05/21/2016

module SuggestGrid
  class ActionController < BaseController
    @@instance = ActionController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Create an action.
    # @param [Action] body Required parameter: Example: 
    # @param [String] type Required parameter: Example: 
    # @return MessageResponse response from the API call
    def create_action(body, 
                      type)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/actions/{type}'

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
        raise APIException.new 'Required `user_id` or `item_id` parameters are missing from the request body.', 400, _response.body
      elsif _response.code == 402
        raise APIException.new 'Action limit exceeded.', 402, _response.body
      elsif _response.code == 429
        raise APIException.new 'Too many requests.', 429, _response.body
      elsif _response.code == 500
        raise APIException.new 'Unexpected internal error.', 500, _response.body
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Try to cast response to desired type
      if _response.body.instance_of? Hash
        begin
          MessageResponse.from_hash(_response.body)
        rescue Exception
          raise APIException.new "Invalid JSON returned.", _response.code, _response.body
        end
      end
    end

    # Deletes actions.
    # @param [ActionsQuery] actions_query Required parameter: Example: 
    # @param [String] type Required parameter: Example: 
    # @return MessageResponse response from the API call
    def delete_actions(actions_query, 
                       type)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/actions/{type}'

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
      _response = Unirest.delete _query_url, headers: _headers, parameters: actions_query.to_json, auth: { :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Endpoint error handling using HTTP status codes.
      if _response.code == 400
        raise APIException.new 'Required `user_id` or `item_id` parameters are missing from the request body.', 400, _response.body
      elsif _response.code == 429
        raise APIException.new 'Too many requests.', 429, _response.body
      elsif _response.code == 500
        raise APIException.new 'Unexpected internal error.', 500, _response.body
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Try to cast response to desired type
      if _response.body.instance_of? Hash
        begin
          MessageResponse.from_hash(_response.body)
        rescue Exception
          raise APIException.new "Invalid JSON returned.", _response.code, _response.body
        end
      end
    end
  end
end
