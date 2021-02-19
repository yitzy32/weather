require "http"

response = HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=brooklyn&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=imperial")

# pp response.parse

temp_max = response.parse["main"]["temp_max"]
temp_min = response.parse["main"]["temp_min"]
p response.parse["main"]["feels_like"]
p response.parse["weather"][0]["description"]

p "Today in Brooklyn the temperature high was #{temp_max}"
