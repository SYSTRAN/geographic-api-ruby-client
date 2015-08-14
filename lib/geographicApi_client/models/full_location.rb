module GeographicApiClient
  # 
  class FullLocation < BaseObject
    attr_accessor :position, :address
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Position defined by coordinates and type
        :'position' => :'position',
        
        # Address
        :'address' => :'address'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'position' => :'FullPosition',
        :'address' => :'Address'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'position']
        @position = attributes[:'position']
      end
      
      if attributes[:'address']
        @address = attributes[:'address']
      end
      
    end
  end
end
