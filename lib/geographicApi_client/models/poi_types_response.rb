module GeographicApiClient
  # 
  class PoiTypesResponse < BaseObject
    attr_accessor :poi_types
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # POI types
        :'poi_types' => :'poiTypes'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'poi_types' => :'array[string]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'poiTypes']
        if (value = attributes[:'poiTypes']).is_a?(Array)
          @poi_types = value
        end
      end
      
    end
  end
end
