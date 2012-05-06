class Forecast
  attr_accessor :temperature, :icon, :time

  def initialize(hourly_forecast)
    self.temperature = hourly_forecast['temp']['english']
    self.icon = hourly_forecast['icon_url']
    self.time = hourly_forecast['FCTTIME']['civil']
  end
end
