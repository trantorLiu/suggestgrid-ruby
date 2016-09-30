# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class DeleteErrorResponse < BaseModel
    # Message of the response.
    # @return [String]
    attr_accessor :error_text

    # Description of the response.
    # @return [String]
    attr_accessor :error_description

    # URI of the response for more details.
    # @return [String]
    attr_accessor :error_uri

    # The number of records found for the delete query.
    # @return [Integer]
    attr_accessor :found

    # The number of records deleted for the delete query.
    # @return [Integer]
    attr_accessor :deleted

    # The number of records found but not deleted for the delete query.
    # @return [Integer]
    attr_accessor :failed

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["error_text"] = "error_text"
        @hash["error_description"] = "error_description"
        @hash["error_uri"] = "error_uri"
        @hash["found"] = "found"
        @hash["deleted"] = "deleted"
        @hash["failed"] = "failed"
      end
      @hash
    end

    def initialize(error_text = nil,
                   error_description = nil,
                   error_uri = nil,
                   found = nil,
                   deleted = nil,
                   failed = nil)
      @error_text = error_text
      @error_description = error_description
      @error_uri = error_uri
      @found = found
      @deleted = deleted
      @failed = failed
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        error_text = hash["error_text"]
        error_description = hash["error_description"]
        error_uri = hash["error_uri"]
        found = hash["found"]
        deleted = hash["deleted"]
        failed = hash["failed"]

        # Create object from extracted values
        DeleteErrorResponse.new(error_text,
                                error_description,
                                error_uri,
                                found,
                                deleted,
                                failed)
      end
    end
  end
end
