class WeatherLookup
  attr_accessor :temperature, :icon

  def initialize
    weather_hash = fetch_weather
    assign_values(weather_hash)
  end

  def assign_values(weather_hash)
    hourly_forecast_response = weather_hash.parsed_response['response']['hourly_forecast']['forecast'].first
    self.temperature = hourly_forecast_response['temp']['english']
    self.icon = hourly_forecast_response['icon_url']
  end

  def fetch_weather
    HTTParty.get("http://api.wunderground.com/api/4c7203ee7be685c4/hourly/q/10128.xml")
  end
end
