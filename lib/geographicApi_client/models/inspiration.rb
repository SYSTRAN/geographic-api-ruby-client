module GeographicApiClient
  # 
  class Inspiration < BaseObject
    attr_accessor :id, :title, :content, :photos, :videos
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Inspiration Identifier
        :'id' => :'id',
        
        # Title
        :'title' => :'title',
        
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
        :'title' => :'string',
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
      
      if attributes[:'title']
        @title = attributes[:'title']
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
