module GeographicApiClient
  # 
  class FullInspiration < BaseObject
    attr_accessor :id, :location, :type, :title, :introduction, :content, :photos, :videos
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Inspiration identifier
        :'id' => :'id',
        
        # Location
        :'location' => :'location',
        
        # Inspiration type
        :'type' => :'type',
        
        # Title
        :'title' => :'title',
        
        # Introduction
        :'introduction' => :'introduction',
        
        # Content
        :'content' => :'content',
        
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
        :'type' => :'string',
        :'title' => :'string',
        :'introduction' => :'string',
        :'content' => :'string',
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
      
      if attributes[:'type']
        @type = attributes[:'type']
      end
      
      if attributes[:'title']
        @title = attributes[:'title']
      end
      
      if attributes[:'introduction']
        @introduction = attributes[:'introduction']
      end
      
      if attributes[:'content']
        @content = attributes[:'content']
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
