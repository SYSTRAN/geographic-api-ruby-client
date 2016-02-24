module GeographicApiClient
  # 
  class Chapter < BaseObject
    attr_accessor :order, :title, :introduction, :content
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Chapter order
        :'order' => :'order',
        
        # Chapter title
        :'title' => :'title',
        
        # Chapter introduction
        :'introduction' => :'introduction',
        
        # Chapter content
        :'content' => :'content'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'order' => :'string',
        :'title' => :'string',
        :'introduction' => :'string',
        :'content' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'order']
        @order = attributes[:'order']
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
      
    end
  end
end
