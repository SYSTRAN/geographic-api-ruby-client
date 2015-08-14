# Swagger common files
require 'geographicApi_client/monkey'
require 'geographicApi_client/swagger'
require 'geographicApi_client/swagger/configuration'
require 'geographicApi_client/swagger/request'
require 'geographicApi_client/swagger/response'
require 'geographicApi_client/swagger/version'

# Models
require 'geographicApi_client/models/base_object'
require 'geographicApi_client/models/full_position'
require 'geographicApi_client/models/position'
require 'geographicApi_client/models/address_components'
require 'geographicApi_client/models/address'
require 'geographicApi_client/models/lite_location'
require 'geographicApi_client/models/full_location'
require 'geographicApi_client/models/opening_dates'
require 'geographicApi_client/models/phone_number'
require 'geographicApi_client/models/mail'
require 'geographicApi_client/models/contact'
require 'geographicApi_client/models/opening_hours'
require 'geographicApi_client/models/photo'
require 'geographicApi_client/models/video'
require 'geographicApi_client/models/description'
require 'geographicApi_client/models/review'
require 'geographicApi_client/models/booking'
require 'geographicApi_client/models/lite_poi'
require 'geographicApi_client/models/lite_event'
require 'geographicApi_client/models/full_poi'
require 'geographicApi_client/models/inspiration'
require 'geographicApi_client/models/poi_response'
require 'geographicApi_client/models/events_response'
require 'geographicApi_client/models/inspiration_response'
require 'geographicApi_client/models/poi_details_response'
require 'geographicApi_client/models/poi_types_response'
require 'geographicApi_client/models/supported_languages_response'

# APIs
require 'geographicApi_client/api/inspirations_api'
require 'geographicApi_client/api/poi_api'

module GeographicApiClient
  # Initialize the default configuration
  Swagger.configuration ||= Swagger::Configuration.new
end
