module GeographicApiClient
  # 
  class Review < BaseObject
    attr_accessor :text, :language, :author, :rating
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Text
        :'text' => :'text',
        
        # Language
        :'language' => :'language',
        
        # Author
        :'author' => :'author',
        
        # Rating
        :'rating' => :'rating'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'text' => :'string',
        :'language' => :'string',
        :'author' => :'string',
        :'rating' => :'int'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'text']
        @text = attributes[:'text']
      end
      
      if attributes[:'language']
        @language = attributes[:'language']
      end
      
      if attributes[:'author']
        @author = attributes[:'author']
      end
      
      if attributes[:'rating']
        @rating = attributes[:'rating']
      end
      
    end
  end
end
