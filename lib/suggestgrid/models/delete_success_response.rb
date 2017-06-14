# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class DeleteSuccessResponse < BaseModel
    # Message of the response.
    # @return [String]
    attr_accessor :message

    # The number of records found.
    # @return [Long]
    attr_accessor :found

    # The number of records deleted.
    # @return [Long]
    attr_accessor :deleted

    # The number of records failed to be deleted.
    # @return [Long]
    attr_accessor :failed

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["message"] = "message"
        @_hash["found"] = "found"
        @_hash["deleted"] = "deleted"
        @_hash["failed"] = "failed"
      end
      @_hash
    end

    def initialize(message = nil,
                   found = nil,
                   deleted = nil,
                   failed = nil)
      @message = message
      @found = found
      @deleted = deleted
      @failed = failed
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      message = hash['message']
      found = hash['found']
      deleted = hash['deleted']
      failed = hash['failed']

      # Create object from extracted values
      DeleteSuccessResponse.new(message,
                                found,
                                deleted,
                                failed)
    end
  end
end
