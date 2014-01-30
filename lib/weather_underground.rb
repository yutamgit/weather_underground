require "weather_underground/version"
require "json"
require "rest_client"
require "uri"

module WeatherUnderground
  URL = "http://api.wunderground.com/api/%s/"

  class Base
    def initialize(apikey)
      @apikey = apikey
    end

    def current_conditions(location)
      make_request url_with_key + "/conditions/q/%s.json" % URI.escape(location)
    end
    
    def forecast(location)
      make_request url_with_key + "/forecast/conditions/q/%s.json" % URI.escape(location)
    end

    def geolookup(location)
      make_request url_with_key + "/geolookup/conditions/q/%s.json" % URI.escape(location)
    end

    def autoip(ip)
      make_request url_with_key + "/geolookup/conditions/q/autoip.json?" + ip
    end

    private

    def make_request(uri)
      JSON.parse RestClient::Resource.new(uri, :timeout => 5, :open_timeout => 5).get
    end

    def url_with_key
      WeatherUnderground::URL % @apikey
    end
  end
end
