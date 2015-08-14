module GeographicApiClient
  # 
  class FullPosition < BaseObject
    attr_accessor :coordinates, :type
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Coordinates defined by latitude and longitude
        :'coordinates' => :'coordinates',
        
        # The type of position
        :'type' => :'type'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'coordinates' => :'array[double]',
        :'type' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'coordinates']
        if (value = attributes[:'coordinates']).is_a?(Array)
          @coordinates = value
        end
      end
      
      if attributes[:'type']
        @type = attributes[:'type']
      end
      
    end
  end
end
