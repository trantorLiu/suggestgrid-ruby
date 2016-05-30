# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ) on 05/30/2016

module SuggestGrid
  class MetadataController < BaseController
    @@instance = MetadataController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Create a user metadata.
    # @param [Metadata] metadata Required parameter: Example: 
    # @param [String] user_id Required parameter: The user_id to delete its metadata.
    # @return MessageResponse response from the API call
    def create_a_user_metadata(metadata, 
                               user_id)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/users/{user_id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
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
      _response = Unirest.put _query_url, headers: _headers, parameters: metadata.to_json, auth: { :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Endpoint error handling using HTTP status codes.
      if _response.code == 400
        raise APIException.new 'Metadata is invalid.', 400, _response.body
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

    # Delete a user metadata.
    # @param [String] user_id Required parameter: The user_id to delete its metadata.
    # @return MessageResponse response from the API call
    def delete_a_user_metadata(user_id)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/users/{user_id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
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
      _response = Unirest.delete _query_url, headers: _headers, auth: { :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Endpoint error handling using HTTP status codes.
      if _response.code == 429
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

    # Get information about users.
    # @return MetadataInformationResponse response from the API call
    def get_users
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/users'

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
      elsif _response.code == 500
        raise APIException.new 'Unexpected internal error.', 500, _response.body
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Try to cast response to desired type
      if _response.body.instance_of? Hash
        begin
          MetadataInformationResponse.from_hash(_response.body)
        rescue Exception
          raise APIException.new "Invalid JSON returned.", _response.code, _response.body
        end
      end
    end

    # Delete all user metadata.
    # @return MessageResponse response from the API call
    def delete_all_user_metadata
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/users'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'SUGGESTGRID',
        'accept' => 'application/json'
      }

      # invoke the API call request to fetch the response
      _response = Unirest.delete _query_url, headers: _headers, auth: { :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Endpoint error handling using HTTP status codes.
      if _response.code == 429
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

    # Create an item metadata.
    # @param [Metadata] body Required parameter: Example: 
    # @param [String] item_id Required parameter: The item_id to delete its metadata.
    # @return MessageResponse response from the API call
    def create_an_item_metadata(body, 
                                item_id)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/items/{item_id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
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

      # invoke the API call request to fetch the response
      _response = Unirest.put _query_url, headers: _headers, parameters: body.to_json, auth: { :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Endpoint error handling using HTTP status codes.
      if _response.code == 400
        raise APIException.new 'Metadata is invalid.', 400, _response.body
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

    # Delete an item metadata.
    # @param [String] item_id Required parameter: The item_id to delete its metadata.
    # @return MessageResponse response from the API call
    def delete_an_item_metadata(item_id)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/items/{item_id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'item_id' => item_id
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'SUGGESTGRID',
        'accept' => 'application/json'
      }

      # invoke the API call request to fetch the response
      _response = Unirest.delete _query_url, headers: _headers, auth: { :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Endpoint error handling using HTTP status codes.
      if _response.code == 429
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

    # Get information about items.
    # @return MetadataInformationResponse response from the API call
    def get_items
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/items'

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
      elsif _response.code == 500
        raise APIException.new 'Unexpected internal error.', 500, _response.body
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Try to cast response to desired type
      if _response.body.instance_of? Hash
        begin
          MetadataInformationResponse.from_hash(_response.body)
        rescue Exception
          raise APIException.new "Invalid JSON returned.", _response.code, _response.body
        end
      end
    end

    # Delete all item metadata.
    # @return MessageResponse response from the API call
    def delete_all_item_metadata
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/items'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'SUGGESTGRID',
        'accept' => 'application/json'
      }

      # invoke the API call request to fetch the response
      _response = Unirest.delete _query_url, headers: _headers, auth: { :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Endpoint error handling using HTTP status codes.
      if _response.code == 429
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

    # Post bulk user metadata.
    # @param [String] body Required parameter: Example: 
    # @return MessageResponse response from the API call
    def post_bulk_user_metadata(body)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/users/_bulk'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'SUGGESTGRID',
        'accept' => 'application/json'
      }

      # invoke the API call request to fetch the response
      _response = Unirest.post _query_url, headers: _headers, parameters: body, auth: { :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Endpoint error handling using HTTP status codes.
      if _response.code == 207
        raise APIException.new 'Some metadata is not uploaded successfully.', 207, _response.body
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

    # Post bulk item metadata.
    # @param [String] body Required parameter: Example: 
    # @return MessageResponse response from the API call
    def post_bulk_item_metadata(body)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/items/_bulk'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'SUGGESTGRID',
        'accept' => 'application/json'
      }

      # invoke the API call request to fetch the response
      _response = Unirest.post _query_url, headers: _headers, parameters: body, auth: { :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Endpoint error handling using HTTP status codes.
      if _response.code == 207
        raise APIException.new 'Some metadata is not uploaded successfully.', 207, _response.body
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
