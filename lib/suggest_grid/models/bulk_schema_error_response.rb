# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ) on 05/21/2016

module SuggestGrid
  class BulkSchemaErrorResponse

    # Message of the response.
    # @return [String]
    attr_accessor :message

    # TODO: Write general description for this method
    # @return [List of SchemaErrorResponse]
    attr_accessor :errors

    def initialize(message = nil,
                   errors = nil)
      @message = message
      @errors = errors

    end

    def method_missing(method_name)
      puts "There is no method called '#{method_name}'."
    end

    # Creates JSON of the curent object
    def to_json(options = {})
      hash = key_map
      hash.to_json(options)
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        message = hash["message"]
        # Parameter is an array, so we need to iterate through it
        errors = nil
        if hash["errors"] != nil
          errors = Array.new
          hash["errors"].each{|structure| errors << SchemaErrorResponse.from_hash(structure)}
        end
        # Create object from extracted values
        BulkSchemaErrorResponse.new(message,
                                    errors)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['message'] = message
      hash['errors'] = errors.map(&:key_map)
      hash
    end
  end
end
