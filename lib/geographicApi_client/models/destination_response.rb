module GeographicApiClient
  # 
  class DestinationResponse < BaseObject
    attr_accessor :error, :total, :offset, :destinations
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Error at request level
        :'error' => :'error',
        
        # Total number of elements matching the criteria (for pagination)
        :'total' => :'total',
        
        # Pagination offset
        :'offset' => :'offset',
        
        # Array of destinations
        :'destinations' => :'destinations'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'error' => :'ErrorResponse',
        :'total' => :'int',
        :'offset' => :'int',
        :'destinations' => :'array[Destination]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'error']
        @error = attributes[:'error']
      end
      
      if attributes[:'total']
        @total = attributes[:'total']
      end
      
      if attributes[:'offset']
        @offset = attributes[:'offset']
      end
      
      if attributes[:'destinations']
        if (value = attributes[:'destinations']).is_a?(Array)
          @destinations = value
        end
      end
      
    end
  end
end
