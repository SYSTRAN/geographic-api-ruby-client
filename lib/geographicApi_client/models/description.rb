module GeographicApiClient
  # 
  class Description < BaseObject
    attr_accessor :content, :type
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Description part content
        :'content' => :'content',
        
        # Description part category
        :'type' => :'type'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'content' => :'string',
        :'type' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'content']
        @content = attributes[:'content']
      end
      
      if attributes[:'type']
        @type = attributes[:'type']
      end
      
    end
  end
end
