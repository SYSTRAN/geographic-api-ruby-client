module GeographicApiClient
  # 
  class LiteEvent < BaseObject
    attr_accessor :id, :location, :name, :opening_dates, :main_type, :types, :rating, :price_level
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Event Identifier
        :'id' => :'id',
        
        # Location
        :'location' => :'location',
        
        # Name
        :'name' => :'name',
        
        # Opening dates
        :'opening_dates' => :'openingDates',
        
        # Main type
        :'main_type' => :'mainType',
        
        # Types, ordered from general to specific
        :'types' => :'types',
        
        # Rating
        :'rating' => :'rating',
        
        # Price Level
        :'price_level' => :'priceLevel'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'string',
        :'location' => :'LiteLocation',
        :'name' => :'string',
        :'opening_dates' => :'OpeningDates',
        :'main_type' => :'string',
        :'types' => :'array[string]',
        :'rating' => :'int',
        :'price_level' => :'int'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        @id = attributes[:'id']
      end
      
      if attributes[:'location']
        @location = attributes[:'location']
      end
      
      if attributes[:'name']
        @name = attributes[:'name']
      end
      
      if attributes[:'openingDates']
        @opening_dates = attributes[:'openingDates']
      end
      
      if attributes[:'mainType']
        @main_type = attributes[:'mainType']
      end
      
      if attributes[:'types']
        if (value = attributes[:'types']).is_a?(Array)
          @types = value
        end
      end
      
      if attributes[:'rating']
        @rating = attributes[:'rating']
      end
      
      if attributes[:'priceLevel']
        @price_level = attributes[:'priceLevel']
      end
      
    end
  end
end
