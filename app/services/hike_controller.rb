def index
  weather_object = Weather.new("97219")
  @humidity = weather_object.get_humidity()
end
