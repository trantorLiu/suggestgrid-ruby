# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ) on 06/16/2016

require 'ostruct'
require 'json'

module SuggestGrid
  class Metadata < OpenStruct

    # TODO: Write general description for this method
    #  attr_accessor :id

    def initialize(props = {})
      super(props)
    end

    # Creates JSON of the curent object
    def to_json(options = {})
      key_map.to_json(options)
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

    # Defines the key map for json serialization
    def key_map
      self.marshal_dump
    end
  end
end
