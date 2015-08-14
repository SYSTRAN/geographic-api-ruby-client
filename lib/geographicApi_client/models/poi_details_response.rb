module GeographicApiClient
  # 
  class PoiDetailsResponse < BaseObject
    attr_accessor :poi_details
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Full POI details
        :'poi_details' => :'poiDetails'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'poi_details' => :'FullPOI'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'poiDetails']
        @poi_details = attributes[:'poiDetails']
      end
      
    end
  end
end
