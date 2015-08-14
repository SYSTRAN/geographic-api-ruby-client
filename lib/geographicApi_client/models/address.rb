module GeographicApiClient
  # 
  class Address < BaseObject
    attr_accessor :components, :formatted, :vicinity
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Address components
        :'components' => :'components',
        
        # Formatted Address (Postal Address)
        :'formatted' => :'formatted',
        
        # Vicinity
        :'vicinity' => :'vicinity'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'components' => :'AddressComponents',
        :'formatted' => :'string',
        :'vicinity' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'components']
        @components = attributes[:'components']
      end
      
      if attributes[:'formatted']
        @formatted = attributes[:'formatted']
      end
      
      if attributes[:'vicinity']
        @vicinity = attributes[:'vicinity']
      end
      
    end
  end
end
