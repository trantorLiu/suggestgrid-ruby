# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class Metadata < BaseModel
    # The id of the metadata of a user or an item.
    # @return [String]
    attr_accessor :id

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["id"] = "id"
      end
      @_hash
    end

    def initialize(hash)
      if !hash['id']
        hash['id'] = nil
      end
      hash.each { |name, value|
        instance_variable_set("@#{name}", value)
      }
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      Metadata.new(hash)
    end

    # Use to allow additional model properties
    def method_missing(method_sym, *arguments, &block)
      method = method_sym.to_s
      if method.end_with? '='
        instance_variable_set("@%s" % [method.chomp('=')], arguments.first)
      elsif instance_variable_defined?("@#{method}") && arguments.empty?
        instance_variable_get("@#{method}")
      else
        super
      end
    end

    # Override for additional model properties
    def respond_to?(method_sym, include_private=false)
      instance_variable_defined?("@#{method_sym}") ? true : super
    end
  end
end
