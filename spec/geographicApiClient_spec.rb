require 'rspec'
require_relative '../lib/geographicApiClient'

describe "GeographicApiClient" do
  before :all do
    GeographicApiClient::Swagger.configure do |configuration|
      configuration.key = "<API KEY HERE>"
    end

  end
  describe "Configuration" do
    it "assures the user has a correct client configuration" do
      expect(GeographicApiClient::Swagger.configuration.key.length).to eq(36)
    end
  end

  describe "GeographicApi" do
    it "Gets Point of interests." do
      result = GeographicApiClient::PoiApi.geographic_poi_get
      expect(result.points_of_interest).not_to be_empty
    end
    it "Gets Point of interests." do
      result = GeographicApiClient::PoiApi.geographic_poi_supported_languages_get
      expect(result.languages).not_to be_empty
    end
    it "Gets Point of interests." do
      result = GeographicApiClient::PoiApi.geographic_poi_events_get
      expect(result.events).not_to be_nil
    end
    it "Gets Point of interests." do
      request = GeographicApiClient::PoiApi.geographic_poi_get
      result = GeographicApiClient::PoiApi.geographic_poi_details_get(request.points_of_interest[0].id)
      expect(result.poi_details).not_to be_nil
    end
    it "Gets Point of interests." do
      result = GeographicApiClient::PoiApi.geographic_poi_types_get
      expect(result.poi_types).not_to be_empty
    end
  end

  describe "InspirationsApi" do
    it "Gets Inspirations." do
      result = GeographicApiClient::InspirationsApi.geographic_inspirations_get
      expect(result.total).not_to be_nil
    end
  end

end
