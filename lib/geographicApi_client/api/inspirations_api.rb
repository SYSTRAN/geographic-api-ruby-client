require "uri"

module GeographicApiClient
  class InspirationsApi
    basePath = "https://platformapi-stag.systran.net:8904/"
    # apiInvoker = APIInvoker

    # Get Inspirations
    # Get `Inspirations`.\n\nThe main criteria can be:\n* a position and a radius\n* a textual search\n\nAdditional critera can be added.\n
    # @param [Hash] opts the optional parameters
    # @option opts [double] :latitude Latitude location
    # @option opts [double] :longitude Longitude location
    # @option opts [double] :radius Radius in meters
    # @option opts [string] :address Address
    # @option opts [string] :country Country
    # @option opts [string] :state State
    # @option opts [string] :county County
    # @option opts [string] :city City
    # @option opts [string] :district District
    # @option opts [string] :postal_code Postal Code
    # @option opts [int] :limit Pagination limit
    # @option opts [int] :offset Pagination offset
    # @option opts [string] :accept_language Preferred languages for response localization.\n\nSee [Accept-Language header specification for HTTP\n1.1](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.4)\n
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [InspirationResponse]
    def self.geographic_inspirations_get(opts = {})
      

      # resource path
      path = "/geographic/inspirations".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'latitude'] = opts[:'latitude'] if opts[:'latitude']
      query_params[:'longitude'] = opts[:'longitude'] if opts[:'longitude']
      query_params[:'radius'] = opts[:'radius'] if opts[:'radius']
      query_params[:'address'] = opts[:'address'] if opts[:'address']
      query_params[:'country'] = opts[:'country'] if opts[:'country']
      query_params[:'state'] = opts[:'state'] if opts[:'state']
      query_params[:'county'] = opts[:'county'] if opts[:'county']
      query_params[:'city'] = opts[:'city'] if opts[:'city']
      query_params[:'district'] = opts[:'district'] if opts[:'district']
      query_params[:'postalCode'] = opts[:'postal_code'] if opts[:'postal_code']
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
      obj = InspirationResponse.new() and obj.build_from_hash(response)
    end
  end
end
