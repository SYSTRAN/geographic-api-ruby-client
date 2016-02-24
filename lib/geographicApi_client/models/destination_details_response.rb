module GeographicApiClient
  # 
  class DestinationDetailsResponse < BaseObject
    attr_accessor :error, :result
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Error at request level
        :'error' => :'error',
        
        # Full destination data
        :'result' => :'result'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'error' => :'ErrorResponse',
        :'result' => :'FullDestination'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'error']
        @error = attributes[:'error']
      end
      
      if attributes[:'result']
        @result = attributes[:'result']
      end
      
    end
  end
end
