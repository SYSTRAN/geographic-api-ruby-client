module GeographicApiClient
  # 
  class Mail < BaseObject
    attr_accessor :value, :type
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Mail address
        :'value' => :'value',
        
        # Professional, ...
        :'type' => :'type'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'value' => :'string',
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
      
      if attributes[:'type']
        @type = attributes[:'type']
      end
      
    end
  end
end
