module GeographicApiClient
  # 
  class Contact < BaseObject
    attr_accessor :phone_numbers, :mails
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Array of phone numbers
        :'phone_numbers' => :'phoneNumbers',
        
        # Array of mails
        :'mails' => :'mails'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'phone_numbers' => :'array[PhoneNumber]',
        :'mails' => :'array[Mail]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'phoneNumbers']
        if (value = attributes[:'phoneNumbers']).is_a?(Array)
          @phone_numbers = value
        end
      end
      
      if attributes[:'mails']
        if (value = attributes[:'mails']).is_a?(Array)
          @mails = value
        end
      end
      
    end
  end
end
