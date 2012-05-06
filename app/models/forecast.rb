class Forecast
  attr_accessor :temperature, :icon

  def initialize(hourly_forecast)
    self.temperature = hourly_forecast['temp']['english']
    self.icon = hourly_forecast['icon_url']
  end
end
