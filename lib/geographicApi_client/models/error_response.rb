module GeographicApiClient
  # 
  class ErrorResponse < BaseObject
    attr_accessor :message, :info
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Readable description of the error
        :'message' => :'message',
        
        # Additional information about the error
        :'info' => :'info'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'message' => :'string',
        :'info' => :'object'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'message']
        @message = attributes[:'message']
      end
      
      if attributes[:'info']
        @info = attributes[:'info']
      end
      
    end
  end
end
