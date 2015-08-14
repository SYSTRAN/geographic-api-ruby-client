module GeographicApiClient
  # 
  class PoiResponse < BaseObject
    attr_accessor :total, :offset, :points_of_interest
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Total number of elements matching the criteria (for pagination)
        :'total' => :'total',
        
        # Pagination offset
        :'offset' => :'offset',
        
        # Array of lite POI
        :'points_of_interest' => :'pointsOfInterest'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'total' => :'int',
        :'offset' => :'int',
        :'points_of_interest' => :'array[LitePOI]'
        
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
      
      if attributes[:'pointsOfInterest']
        if (value = attributes[:'pointsOfInterest']).is_a?(Array)
          @points_of_interest = value
        end
      end
      
    end
  end
end
