# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).
require 'openssl'
require 'json'
require 'faraday'

# APIMATIC Helper Files
require_relative 'suggest_grid/api_helper.rb'
require_relative 'suggest_grid/configuration.rb'
require_relative 'suggest_grid/suggest_grid_client.rb'

# Http
require_relative 'suggest_grid/http/http_call_back.rb'
require_relative 'suggest_grid/http/http_client.rb'
require_relative 'suggest_grid/http/http_method_enum.rb'
require_relative 'suggest_grid/http/http_request.rb'
require_relative 'suggest_grid/http/http_response.rb'
require_relative 'suggest_grid/http/http_context.rb'
require_relative 'suggest_grid/http/unirest_client.rb'

# Models
require_relative 'suggest_grid/models/action.rb'
require_relative 'suggest_grid/models/metadata.rb'
require_relative 'suggest_grid/models/type_request_body.rb'
require_relative 'suggest_grid/models/get_recommended_users_body.rb'
require_relative 'suggest_grid/models/get_recommended_items_body.rb'
require_relative 'suggest_grid/models/get_similar_users_body.rb'
require_relative 'suggest_grid/models/get_similar_items_body.rb'
require_relative 'suggest_grid/models/message_response.rb'
require_relative 'suggest_grid/models/count_response.rb'
require_relative 'suggest_grid/models/error_response.rb'
require_relative 'suggest_grid/models/get_types_response.rb'
require_relative 'suggest_grid/models/get_type_response.rb'
require_relative 'suggest_grid/models/bulk_schema_error_response.rb'
require_relative 'suggest_grid/models/schema_error_response.rb'
require_relative 'suggest_grid/models/metadata_information_response.rb'
require_relative 'suggest_grid/models/users_response.rb'
require_relative 'suggest_grid/models/items_response.rb'

# Exceptions
require_relative 'suggest_grid/exceptions/api_exception.rb'

# Controllers
require_relative 'suggest_grid/controllers/base_controller.rb'
require_relative 'suggest_grid/controllers/type_controller.rb'
require_relative 'suggest_grid/controllers/action_controller.rb'
require_relative 'suggest_grid/controllers/metadata_controller.rb'
require_relative 'suggest_grid/controllers/recommendation_controller.rb'
require_relative 'suggest_grid/controllers/similarity_controller.rb'
