# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class Metadata < BaseModel
    # The id of the user or the item that the metadata is associated with.
    # Id parameter is necessary for all metadata.
    #  attr_accessor :id

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = self.instance_variables.inject({}) { |h, (k, v)| h[k] = k; h }
      end
      @hash
    end

    def initialize(props = {})
        props.each do |name, value|
            instance_variable_set("@#{name}", value)
            singleton_class.class_eval { attr_accessor name }
        end
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Create object from extracted values
        Metadata.new(hash)
      end
    end
  end
end
