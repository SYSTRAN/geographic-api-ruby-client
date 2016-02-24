require 'rspec'
require_relative '../lib/geographicApiClient'

describe "GeographicApiClient" do
  before :all do
    GeographicApiClient::Swagger.configure do |configuration|
      configuration.host = "https://platform.systran.net:8904"
      if File.exists?("./apiKey.txt")
        key = File.read("./apiKey.txt", :encoding => 'UTF-8')
        if key.length > 0
          configuration.key = key
        else
          raise "The key.txt file is empty"
        end
      else
        raise "The key.txt file doesn't exists"
      end

    end

  end
  describe "Configuration" do
    it "assures the user has a correct client configuration" do
      expect(GeographicApiClient::Swagger.configuration.key.length).to be_between(10, 100)
    end
  end
  describe "GeographicApi" do
    it "Gets the API version." do
      result = GeographicApiClient::APIVersionApi.geographic_api_version_get
      expect(result.version).not_to be_empty
    end

    it "Gets the supported languages" do
      result = GeographicApiClient::SupportedLanguagesApi.geographic_supported_languages_get
      expect(result.languages).not_to be_empty

    end
    it "Gets the list of destinations" do
      result = GeographicApiClient::DestinationsApi.geographic_destinations_list_get
      expect(result.total).to be_an(Integer)
    end
    it "Gets a destination" do
      id = GeographicApiClient::DestinationsApi.geographic_destinations_list_get.destinations[0].id
      puts id.inspect
      result = GeographicApiClient::DestinationsApi.geographic_destinations_get_get(id)
      expect(result).not_to be_nil
    end

    it "Gets the list of dossiers" do
      result = GeographicApiClient::InspirationsApi.geographic_inspirations_dossiers_list_get
      expect(result.total).to be_an(Integer)
    end
    it "Gets the list of events" do
      result = GeographicApiClient::InspirationsApi.geographic_inspirations_events_list_get
      expect(result.total).to be_an(Integer)
    end
    it "Gets the list of news" do
      result = GeographicApiClient::InspirationsApi.geographic_inspirations_news_in_brief_list_get
      expect(result.total).to be_an(Integer)
    end
    it "Gets the list of slideshows" do
      result = GeographicApiClient::InspirationsApi.geographic_inspirations_slide_shows_list_get
      expect(result.total).to be_an(Integer)
    end
    it "Gets the list of tests" do
      result = GeographicApiClient::InspirationsApi.geographic_inspirations_tests_list_get
      expect(result.total).to be_an(Integer)
    end
    it "Gets the list of inspirations" do
      result = GeographicApiClient::InspirationsApi.geographic_inspirations_list_get
      expect(result.total).to be_an(Integer)
    end
    it "Gets an inspiration" do
      id =  GeographicApiClient::InspirationsApi.geographic_inspirations_list_get.inspirations[0].id
      result = GeographicApiClient::InspirationsApi.geographic_inspirations_get_get(id)
      expect(result).not_to be_nil
    end

    it "Gets the types of POI" do
      result = GeographicApiClient::POIApi.geographic_poi_types_get
      expect(result.poi_types).not_to be_empty
    end
    it "Gets the list of POI" do
      result = GeographicApiClient::POIApi.geographic_poi_list_get
      expect(result.total).to be_an(Integer)
    end
    it "Gets a POI" do
      id =  GeographicApiClient::POIApi.geographic_poi_list_get.points_of_interest[0].id
      result = GeographicApiClient::POIApi.geographic_poi_get_get(id)
      expect(result).not_to be_nil
    end
  end
end
