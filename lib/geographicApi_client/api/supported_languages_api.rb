require "uri"

module GeographicApiClient
  class SupportedLanguagesApi
    basePath = "https://localhost:8102/"
    # apiInvoker = APIInvoker

    # Get Supported languages
    # Get a list of languages in which geographic data can be localized.
    # @param [Hash] opts the optional parameters
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [SupportedLanguagesResponse]
    def self.geographic_supported_languages_get(opts = {})
      

      # resource path
      path = "/geographic/supportedLanguages".sub('{format}','json')

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
  end
end
