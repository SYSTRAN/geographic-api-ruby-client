module GeographicApiClient
  # 
  class FullPOI < BaseObject
    attr_accessor :id, :location, :name, :types, :rating, :price_level, :contact, :open_now, :opening_hours, :photos, :url, :descriptions, :reviews, :booking
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # POI Identifier
        :'id' => :'id',
        
        # Location
        :'location' => :'location',
        
        # Name
        :'name' => :'name',
        
        # Types, ordered from general to specific
        :'types' => :'types',
        
        # Rating
        :'rating' => :'rating',
        
        # Price Level
        :'price_level' => :'priceLevel',
        
        # Contact
        :'contact' => :'contact',
        
        # Open Now
        :'open_now' => :'openNow',
        
        # Opening Hours
        :'opening_hours' => :'openingHours',
        
        # Array of Photos
        :'photos' => :'photos',
        
        # POI
        :'url' => :'url',
        
        # Description content splitted in several parts
        :'descriptions' => :'descriptions',
        
        # Reviews
        :'reviews' => :'reviews',
        
        # Booking
        :'booking' => :'booking'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'string',
        :'location' => :'FullLocation',
        :'name' => :'string',
        :'types' => :'array[string]',
        :'rating' => :'int',
        :'price_level' => :'int',
        :'contact' => :'Contact',
        :'open_now' => :'boolean',
        :'opening_hours' => :'array[OpeningHours]',
        :'photos' => :'array[Photo]',
        :'url' => :'string',
        :'descriptions' => :'array[Description]',
        :'reviews' => :'array[Review]',
        :'booking' => :'Booking'
        
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
      
      if attributes[:'contact']
        @contact = attributes[:'contact']
      end
      
      if attributes[:'openNow']
        @open_now = attributes[:'openNow']
      end
      
      if attributes[:'openingHours']
        if (value = attributes[:'openingHours']).is_a?(Array)
          @opening_hours = value
        end
      end
      
      if attributes[:'photos']
        if (value = attributes[:'photos']).is_a?(Array)
          @photos = value
        end
      end
      
      if attributes[:'url']
        @url = attributes[:'url']
      end
      
      if attributes[:'descriptions']
        if (value = attributes[:'descriptions']).is_a?(Array)
          @descriptions = value
        end
      end
      
      if attributes[:'reviews']
        if (value = attributes[:'reviews']).is_a?(Array)
          @reviews = value
        end
      end
      
      if attributes[:'booking']
        @booking = attributes[:'booking']
      end
      
    end
  end
end
