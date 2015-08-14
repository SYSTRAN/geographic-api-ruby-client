module GeographicApiClient
  # 
  class OpeningHours < BaseObject
    attr_accessor :_begin, :_end
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Opening hour (day(1 digit),hour(2 digits), minutes(2digits)), ex: 50928 for Friday 9h28
        :'_begin' => :'begin',
        
        # Closing hour (day(1 digit),hour(2 digits), minutes(2digits)), ex: 51722 for Friday 17h22
        :'_end' => :'end'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'_begin' => :'int',
        :'_end' => :'int'
        
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
