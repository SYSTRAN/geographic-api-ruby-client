module GeographicApiClient
  # 
  class InspirationResponse < BaseObject
    attr_accessor :total, :offset, :inspirations
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Total number of elements matching the criteria (for pagination)
        :'total' => :'total',
        
        # Pagination offset
        :'offset' => :'offset',
        
        # Array of inspirations
        :'inspirations' => :'inspirations'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'total' => :'int',
        :'offset' => :'int',
        :'inspirations' => :'array[Inspiration]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'total']
        @total = attributes[:'total']
      end
      
      if attributes[:'offset']
        @offset = attributes[:'offset']
      end
      
      if attributes[:'inspirations']
        if (value = attributes[:'inspirations']).is_a?(Array)
          @inspirations = value
        end
      end
      
    end
  end
end
