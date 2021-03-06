module GeographicApiClient
  # 
  class AddressComponents < BaseObject
    attr_accessor :country, :state, :county, :city, :district, :postal_code, :street, :house
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Country
        :'country' => :'country',
        
        # State
        :'state' => :'state',
        
        # County
        :'county' => :'county',
        
        # City
        :'city' => :'city',
        
        # District
        :'district' => :'district',
        
        # Postal code
        :'postal_code' => :'postalCode',
        
        # Street
        :'street' => :'street',
        
        # House
        :'house' => :'house'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'country' => :'string',
        :'state' => :'string',
        :'county' => :'string',
        :'city' => :'string',
        :'district' => :'string',
        :'postal_code' => :'string',
        :'street' => :'string',
        :'house' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'country']
        @country = attributes[:'country']
      end
      
      if attributes[:'state']
        @state = attributes[:'state']
      end
      
      if attributes[:'county']
        @county = attributes[:'county']
      end
      
      if attributes[:'city']
        @city = attributes[:'city']
      end
      
      if attributes[:'district']
        @district = attributes[:'district']
      end
      
      if attributes[:'postalCode']
        @postal_code = attributes[:'postalCode']
      end
      
      if attributes[:'street']
        @street = attributes[:'street']
      end
      
      if attributes[:'house']
        @house = attributes[:'house']
      end
      
    end
  end
end
