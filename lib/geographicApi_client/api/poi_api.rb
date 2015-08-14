require "uri"

module GeographicApiClient
  class PoiApi
    basePath = "https://platformapi-stag.systran.net:8904/"
    # apiInvoker = APIInvoker

    # Get Point of interests\n
    # Get `Point of interests`.\n\nThe main criteria can be:\n* a position and a radius\n* a bounding box\n* a textual search\n\nAdditional critera can be added.\n
    # @param [Hash] opts the optional parameters
    # @option opts [double] :latitude Latitude location
    # @option opts [double] :longitude Longitude location
    # @option opts [double] :radius Radius in meters
    # @option opts [double] :maximum_latitude Latitude of the top (northernmost) side of the bounding box
    # @option opts [double] :maximum_longitude Longitude of the right (easternmost) side of the bounding box
    # @option opts [double] :minimum_latitude Latitude of the bottom (southernmost) side of the bounding box
    # @option opts [double] :minimum_longitude Longitude of the left (westernmost) side of the bounding box
    # @option opts [array[string]] :filter Filter on all relevent POI data (name, type, address, ...)
    # @option opts [array[string]] :name POI name
    # @option opts [string] :main_type POI main type
    # @option opts [array[string]] :type POI type
    # @option opts [string] :address POI address
    # @option opts [string] :country POI country
    # @option opts [string] :state POI state
    # @option opts [string] :county POI county
    # @option opts [string] :city POI city
    # @option opts [string] :district POI district
    # @option opts [string] :postal_code POI postal code
    # @option opts [string] :street POI street
    # @option opts [string] :house POI house
    # @option opts [string] :rank_by Ranking criteria
    # @option opts [boolean] :open_now Only open for business POI
    # @option opts [int] :minimum_rating Minimum rating
    # @option opts [int] :maximum_rating Maximum rating
    # @option opts [int] :minimum_price Minumum price
    # @option opts [int] :maximum_price Maximum price
    # @option opts [int] :limit Pagination limit
    # @option opts [int] :offset Pagination offset
    # @option opts [string] :accept_language Preferred languages for response localization.\n\nSee [Accept-Language header specification for HTTP\n1.1](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.4)\n
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [PoiResponse]
    def self.geographic_poi_get(opts = {})
      

      # resource path
      path = "/geographic/poi".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'latitude'] = opts[:'latitude'] if opts[:'latitude']
      query_params[:'longitude'] = opts[:'longitude'] if opts[:'longitude']
      query_params[:'radius'] = opts[:'radius'] if opts[:'radius']
      query_params[:'maximumLatitude'] = opts[:'maximum_latitude'] if opts[:'maximum_latitude']
      query_params[:'maximumLongitude'] = opts[:'maximum_longitude'] if opts[:'maximum_longitude']
      query_params[:'minimumLatitude'] = opts[:'minimum_latitude'] if opts[:'minimum_latitude']
      query_params[:'minimumLongitude'] = opts[:'minimum_longitude'] if opts[:'minimum_longitude']
      query_params[:'filter'] = opts[:'filter'] if opts[:'filter']
      query_params[:'name'] = opts[:'name'] if opts[:'name']
      query_params[:'mainType'] = opts[:'main_type'] if opts[:'main_type']
      query_params[:'type'] = opts[:'type'] if opts[:'type']
      query_params[:'address'] = opts[:'address'] if opts[:'address']
      query_params[:'country'] = opts[:'country'] if opts[:'country']
      query_params[:'state'] = opts[:'state'] if opts[:'state']
      query_params[:'county'] = opts[:'county'] if opts[:'county']
      query_params[:'city'] = opts[:'city'] if opts[:'city']
      query_params[:'district'] = opts[:'district'] if opts[:'district']
      query_params[:'postalCode'] = opts[:'postal_code'] if opts[:'postal_code']
      query_params[:'street'] = opts[:'street'] if opts[:'street']
      query_params[:'house'] = opts[:'house'] if opts[:'house']
      query_params[:'rankBy'] = opts[:'rank_by'] if opts[:'rank_by']
      query_params[:'openNow'] = opts[:'open_now'] if opts[:'open_now']
      query_params[:'minimumRating'] = opts[:'minimum_rating'] if opts[:'minimum_rating']
      query_params[:'maximumRating'] = opts[:'maximum_rating'] if opts[:'maximum_rating']
      query_params[:'minimumPrice'] = opts[:'minimum_price'] if opts[:'minimum_price']
      query_params[:'maximumPrice'] = opts[:'maximum_price'] if opts[:'maximum_price']
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']
      query_params[:'offset'] = opts[:'offset'] if opts[:'offset']
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)
      header_params[:'Accept-Language'] = opts[:'accept_language'] if opts[:'accept_language']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = PoiResponse.new() and obj.build_from_hash(response)
    end

    # Get Point of interest details
    # Get `Point of interest` details.
    # @param id POI identifier
    # @param [Hash] opts the optional parameters
    # @option opts [string] :accept_language Preferred languages for response localization.\n\nSee [Accept-Language header specification for HTTP\n1.1](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.4)\n
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [PoiDetailsResponse]
    def self.geographic_poi_details_get(id, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling geographic_poi_details_get" if id.nil?
      

      # resource path
      path = "/geographic/poi/details".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'id'] = id
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)
      header_params[:'Accept-Language'] = opts[:'accept_language'] if opts[:'accept_language']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = PoiDetailsResponse.new() and obj.build_from_hash(response)
    end

    # Get Events
    # Get `Events`.\n\nThe main criteria can be:\n* opening dates\n* a position and a radius\n* a bounding box\n* a textual search\n\nAdditional critera can be added.\n
    # @param [Hash] opts the optional parameters
    # @option opts [date] :date Date at which events are available
    # @option opts [date] :begin_date Date corresponding to the begining of the period where events are available
    # @option opts [date] :end_date Date corresponding to the end of the period where events are available
    # @option opts [double] :latitude Latitude location
    # @option opts [double] :longitude Longitude location
    # @option opts [double] :radius Radius in meters
    # @option opts [double] :maximum_latitude Latitude of the top (northernmost) side of the bounding box
    # @option opts [double] :maximum_longitude Longitude of the right (easternmost) side of the bounding box
    # @option opts [double] :minimum_latitude Latitude of the bottom (southernmost) side of the bounding box
    # @option opts [double] :minimum_longitude Longitude of the left (westernmost) side of the bounding box
    # @option opts [array[string]] :filter Filter on all relevent POI data (name, type, address, ...)
    # @option opts [array[string]] :name POI name
    # @option opts [string] :main_type POI main type
    # @option opts [array[string]] :type POI type
    # @option opts [string] :address POI address
    # @option opts [string] :country POI country
    # @option opts [string] :state POI state
    # @option opts [string] :county POI county
    # @option opts [string] :city POI city
    # @option opts [string] :district POI district
    # @option opts [string] :postal_code POI postal code
    # @option opts [string] :street POI street
    # @option opts [string] :house POI house
    # @option opts [string] :rank_by Ranking criteria
    # @option opts [boolean] :open_now Only open for business POI
    # @option opts [int] :minimum_rating Minimum rating
    # @option opts [int] :maximum_rating Maximum rating
    # @option opts [int] :minimum_price Minumum price
    # @option opts [int] :maximum_price Maximum price
    # @option opts [int] :limit Pagination limit
    # @option opts [int] :offset Pagination offset
    # @option opts [string] :accept_language Preferred languages for response localization.\n\nSee [Accept-Language header specification for HTTP\n1.1](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.4)\n
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [EventsResponse]
    def self.geographic_poi_events_get(opts = {})
      

      # resource path
      path = "/geographic/poi/events".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'date'] = opts[:'date'] if opts[:'date']
      query_params[:'beginDate'] = opts[:'begin_date'] if opts[:'begin_date']
      query_params[:'endDate'] = opts[:'end_date'] if opts[:'end_date']
      query_params[:'latitude'] = opts[:'latitude'] if opts[:'latitude']
      query_params[:'longitude'] = opts[:'longitude'] if opts[:'longitude']
      query_params[:'radius'] = opts[:'radius'] if opts[:'radius']
      query_params[:'maximumLatitude'] = opts[:'maximum_latitude'] if opts[:'maximum_latitude']
      query_params[:'maximumLongitude'] = opts[:'maximum_longitude'] if opts[:'maximum_longitude']
      query_params[:'minimumLatitude'] = opts[:'minimum_latitude'] if opts[:'minimum_latitude']
      query_params[:'minimumLongitude'] = opts[:'minimum_longitude'] if opts[:'minimum_longitude']
      query_params[:'filter'] = opts[:'filter'] if opts[:'filter']
      query_params[:'name'] = opts[:'name'] if opts[:'name']
      query_params[:'mainType'] = opts[:'main_type'] if opts[:'main_type']
      query_params[:'type'] = opts[:'type'] if opts[:'type']
      query_params[:'address'] = opts[:'address'] if opts[:'address']
      query_params[:'country'] = opts[:'country'] if opts[:'country']
      query_params[:'state'] = opts[:'state'] if opts[:'state']
      query_params[:'county'] = opts[:'county'] if opts[:'county']
      query_params[:'city'] = opts[:'city'] if opts[:'city']
      query_params[:'district'] = opts[:'district'] if opts[:'district']
      query_params[:'postalCode'] = opts[:'postal_code'] if opts[:'postal_code']
      query_params[:'street'] = opts[:'street'] if opts[:'street']
      query_params[:'house'] = opts[:'house'] if opts[:'house']
      query_params[:'rankBy'] = opts[:'rank_by'] if opts[:'rank_by']
      query_params[:'openNow'] = opts[:'open_now'] if opts[:'open_now']
      query_params[:'minimumRating'] = opts[:'minimum_rating'] if opts[:'minimum_rating']
      query_params[:'maximumRating'] = opts[:'maximum_rating'] if opts[:'maximum_rating']
      query_params[:'minimumPrice'] = opts[:'minimum_price'] if opts[:'minimum_price']
      query_params[:'maximumPrice'] = opts[:'maximum_price'] if opts[:'maximum_price']
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']
      query_params[:'offset'] = opts[:'offset'] if opts[:'offset']
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)
      header_params[:'Accept-Language'] = opts[:'accept_language'] if opts[:'accept_language']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = EventsResponse.new() and obj.build_from_hash(response)
    end

    # Supported Languages
    # List of languages in which POI can be localized.
    # @param [Hash] opts the optional parameters
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [SupportedLanguagesResponse]
    def self.geographic_poi_supported_languages_get(opts = {})
      

      # resource path
      path = "/geographic/poi/supportedLanguages".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = SupportedLanguagesResponse.new() and obj.build_from_hash(response)
    end

    # Get available Point of interest types
    # Get available `Point of interest` types.
    # @param [Hash] opts the optional parameters
    # @option opts [string] :accept_language Preferred languages for response localization.\n\nSee [Accept-Language header specification for HTTP\n1.1](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.4)\n
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [PoiTypesResponse]
    def self.geographic_poi_types_get(opts = {})
      

      # resource path
      path = "/geographic/poi/types".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)
      header_params[:'Accept-Language'] = opts[:'accept_language'] if opts[:'accept_language']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = PoiTypesResponse.new() and obj.build_from_hash(response)
    end
  end
end
