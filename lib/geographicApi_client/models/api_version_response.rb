module GeographicApiClient
  # 
  class ApiVersionResponse < BaseObject
    attr_accessor :version
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'version' => :'version'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'version' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'version']
        @version = attributes[:'version']
      end
      
    end
  end
end
