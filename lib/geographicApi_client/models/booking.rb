module GeographicApiClient
  # 
  class Booking < BaseObject
    attr_accessor :url
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Booking service url
        :'url' => :'url'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'url' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'url']
        @url = attributes[:'url']
      end
      
    end
  end
end
