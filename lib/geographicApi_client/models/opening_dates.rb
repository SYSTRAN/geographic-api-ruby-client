module GeographicApiClient
  # 
  class OpeningDates < BaseObject
    attr_accessor :_begin, :_end
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Begin date
        :'_begin' => :'begin',
        
        # End date
        :'_end' => :'end'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'_begin' => :'string',
        :'_end' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'begin']
        @_begin = attributes[:'begin']
      end
      
      if attributes[:'end']
        @_end = attributes[:'end']
      end
      
    end
  end
end
