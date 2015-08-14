module GeographicApiClient
  # 
  class PhoneNumber < BaseObject
    attr_accessor :value, :formatted, :international, :type
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Raw phone number
        :'value' => :'value',
        
        # Formatted phone number
        :'formatted' => :'formatted',
        
        # International phone number
        :'international' => :'international',
        
        # Professional, Fax, Mobile, ...
        :'type' => :'type'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'value' => :'string',
        :'formatted' => :'string',
        :'international' => :'string',
        :'type' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'value']
        @value = attributes[:'value']
      end
      
      if attributes[:'formatted']
        @formatted = attributes[:'formatted']
      end
      
      if attributes[:'international']
        @international = attributes[:'international']
      end
      
      if attributes[:'type']
        @type = attributes[:'type']
      end
      
    end
  end
end
