module GeographicApiClient
  # 
  class LiteLocation < BaseObject
    attr_accessor :position, :vicinity
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Position defined by latitude and longitude
        :'position' => :'position',
        
        # Vicinity description
        :'vicinity' => :'vicinity'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'position' => :'Position',
        :'vicinity' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'position']
        @position = attributes[:'position']
      end
      
      if attributes[:'vicinity']
        @vicinity = attributes[:'vicinity']
      end
      
    end
  end
end
