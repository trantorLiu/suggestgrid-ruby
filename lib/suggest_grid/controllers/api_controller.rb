# This file was automatically generated for SuggestGrid by APIMATIC BETA v2.0 on 12/22/2015

module SuggestGrid
  class APIController

    # TODO: type endpoint description here
    # @return void response from the API call
    def create_action
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "SUGGESTGRID"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end
    end

  end
end