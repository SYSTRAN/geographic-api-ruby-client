module GeographicApiClient
  # 
  class Position < BaseObject
    attr_accessor 
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
    end
  end
end
