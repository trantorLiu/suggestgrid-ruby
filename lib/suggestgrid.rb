# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).
require 'date'
require 'json'
require 'faraday'
require 'certifi'
require 'logging'

require_relative 'suggestgrid/api_helper.rb'
require_relative 'suggestgrid/suggestgrid_client.rb'

# Http
require_relative 'suggestgrid/http/http_call_back.rb'
require_relative 'suggestgrid/http/http_client.rb'
require_relative 'suggestgrid/http/http_method_enum.rb'
require_relative 'suggestgrid/http/http_request.rb'
require_relative 'suggestgrid/http/http_response.rb'
require_relative 'suggestgrid/http/http_context.rb'
require_relative 'suggestgrid/http/faraday_client.rb'
require_relative 'suggestgrid/http/auth/basic_auth.rb'

# Models
require_relative 'suggestgrid/models/base_model.rb'
require_relative 'suggestgrid/models/action.rb'
require_relative 'suggestgrid/models/metadata.rb'
require_relative 'suggestgrid/models/type_request_body.rb'
require_relative 'suggestgrid/models/get_recommended_users_body.rb'
require_relative 'suggestgrid/models/get_recommended_items_body.rb'
require_relative 'suggestgrid/models/get_similar_users_body.rb'
require_relative 'suggestgrid/models/get_similar_items_body.rb'
require_relative 'suggestgrid/models/message_response.rb'
require_relative 'suggestgrid/models/actions_response.rb'
require_relative 'suggestgrid/models/get_types_response.rb'
require_relative 'suggestgrid/models/get_type_response.rb'
require_relative 'suggestgrid/models/bulk_post_response.rb'
require_relative 'suggestgrid/models/bulk_post_error.rb'
require_relative 'suggestgrid/models/users_response.rb'
require_relative 'suggestgrid/models/items_response.rb'

# Exceptions
require_relative 'suggestgrid/exceptions/api_exception.rb'
require_relative 'suggestgrid/exceptions/error_response_error_exception.rb'
require_relative 'suggestgrid/exceptions/limit_exceeded_error_response_error_exception.rb'
require_relative 'suggestgrid/exceptions/detailed_error_response_error_exception.rb'

require_relative 'suggestgrid/configuration.rb'

# Controllers
require_relative 'suggestgrid/controllers/base_controller.rb'
require_relative 'suggestgrid/controllers/type_controller.rb'
require_relative 'suggestgrid/controllers/action_controller.rb'
require_relative 'suggestgrid/controllers/metadata_controller.rb'
require_relative 'suggestgrid/controllers/recommendation_controller.rb'
require_relative 'suggestgrid/controllers/similarity_controller.rb'
