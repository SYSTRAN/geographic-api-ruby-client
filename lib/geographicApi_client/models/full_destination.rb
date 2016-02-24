module GeographicApiClient
  # 
  class FullDestination < BaseObject
    attr_accessor :id, :location, :title, :headline, :introduction, :advice, :chapters, :photos, :videos
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Destination identifier
        :'id' => :'id',
        
        # Location
        :'location' => :'location',
        
        # Title
        :'title' => :'title',
        
        # Headline
        :'headline' => :'headline',
        
        # Introduction
        :'introduction' => :'introduction',
        
        # Advice
        :'advice' => :'advice',
        
        # Chapters
        :'chapters' => :'chapters',
        
        # Array of Photos
        :'photos' => :'photos',
        
        # Array of Videos
        :'videos' => :'videos'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'string',
        :'location' => :'FullLocation',
        :'title' => :'string',
        :'headline' => :'string',
        :'introduction' => :'string',
        :'advice' => :'string',
        :'chapters' => :'array[Chapter]',
        :'photos' => :'array[Photo]',
        :'videos' => :'array[Video]'
        
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
      
      if attributes[:'title']
        @title = attributes[:'title']
      end
      
      if attributes[:'headline']
        @headline = attributes[:'headline']
      end
      
      if attributes[:'introduction']
        @introduction = attributes[:'introduction']
      end
      
      if attributes[:'advice']
        @advice = attributes[:'advice']
      end
      
      if attributes[:'chapters']
        if (value = attributes[:'chapters']).is_a?(Array)
          @chapters = value
        end
      end
      
      if attributes[:'photos']
        if (value = attributes[:'photos']).is_a?(Array)
          @photos = value
        end
      end
      
      if attributes[:'videos']
        if (value = attributes[:'videos']).is_a?(Array)
          @videos = value
        end
      end
      
    end
  end
end
