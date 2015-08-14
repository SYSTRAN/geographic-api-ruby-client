module GeographicApiClient
  # 
  class Photo < BaseObject
    attr_accessor :label, :height, :width, :ref
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Label
        :'label' => :'label',
        
        # Height
        :'height' => :'height',
        
        # Width
        :'width' => :'width',
        
        # Reference
        :'ref' => :'ref'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'label' => :'string',
        :'height' => :'double',
        :'width' => :'double',
        :'ref' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'label']
        @label = attributes[:'label']
      end
      
      if attributes[:'height']
        @height = attributes[:'height']
      end
      
      if attributes[:'width']
        @width = attributes[:'width']
      end
      
      if attributes[:'ref']
        @ref = attributes[:'ref']
      end
      
    end
  end
end
