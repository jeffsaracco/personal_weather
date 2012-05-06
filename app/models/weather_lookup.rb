class WeatherLookup
  attr_accessor :current, :weekly

  def initialize
    weather_hash = fetch_weather
    assign_values(weather_hash)
  end

  def assign_values(weather_hash)
    hourly_forecast_response = weather_hash.parsed_response['hourly_forecast']
    self.current = Forecast.new(hourly_forecast_response.first)
    self.weekly = hourly_forecast_response.map do |hourly|
      Forecast.new(hourly)
    end
  end

  def fetch_weather
    HTTParty.get("http://api.wunderground.com/api/4c7203ee7be685c4/hourly/q/10128.json")
  end
end
