# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ) on 05/21/2016

module SuggestGrid
  class SuggestGridClient
    # Singleton access to action controller
    # @return [ActionController] Returns the controller instance
    def action
      ActionController.instance
    end

    # Singleton access to bulk controller
    # @return [BulkController] Returns the controller instance
    def bulk
      BulkController.instance
    end

    # Singleton access to metadata controller
    # @return [MetadataController] Returns the controller instance
    def metadata
      MetadataController.instance
    end

    # Singleton access to recommendation controller
    # @return [RecommendationController] Returns the controller instance
    def recommendation
      RecommendationController.instance
    end

    # Singleton access to similarity controller
    # @return [SimilarityController] Returns the controller instance
    def similarity
      SimilarityController.instance
    end

    # Singleton access to type controller
    # @return [TypeController] Returns the controller instance
    def type
      TypeController.instance
    end

    # Initializer with authentication and configuration parameters
    def initialize(basic_auth_user_name: nil, basic_auth_password: nil)
      Configuration.basic_auth_user_name = basic_auth_user_name
      Configuration.basic_auth_password = basic_auth_password
    end
  end
end
