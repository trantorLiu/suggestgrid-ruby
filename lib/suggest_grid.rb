# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ) on 06/09/2016
require 'openssl'
require 'json'
require 'unirest'

# APIMATIC Helper Files
require_relative 'suggest_grid/api_helper.rb'
require_relative 'suggest_grid/api_exception.rb'
require_relative 'suggest_grid/configuration.rb'
require_relative 'suggest_grid/suggest_grid_client.rb'

# Controllers
require_relative 'suggest_grid/controllers/base_controller.rb'
require_relative 'suggest_grid/controllers/action_controller.rb'
require_relative 'suggest_grid/controllers/metadata_controller.rb'
require_relative 'suggest_grid/controllers/recommendation_controller.rb'
require_relative 'suggest_grid/controllers/similarity_controller.rb'
require_relative 'suggest_grid/controllers/type_controller.rb'

# Models
require_relative 'suggest_grid/models/action.rb'
require_relative 'suggest_grid/models/metadata.rb'
require_relative 'suggest_grid/models/type_request_body.rb'
require_relative 'suggest_grid/models/recommend_users_body.rb'
require_relative 'suggest_grid/models/recommend_items_body.rb'
require_relative 'suggest_grid/models/similar_users_body.rb'
require_relative 'suggest_grid/models/similar_items_body.rb'
require_relative 'suggest_grid/models/message_response.rb'
require_relative 'suggest_grid/models/error_response.rb'
require_relative 'suggest_grid/models/get_types_response.rb'
require_relative 'suggest_grid/models/get_type_response.rb'
require_relative 'suggest_grid/models/bulk_schema_error_response.rb'
require_relative 'suggest_grid/models/schema_error_response.rb'
require_relative 'suggest_grid/models/metadata_information_response.rb'
require_relative 'suggest_grid/models/users_response.rb'
require_relative 'suggest_grid/models/items_response.rb'
require_relative 'suggest_grid/models/user_similarity_response.rb'
require_relative 'suggest_grid/models/item_similarity_response.rb'
