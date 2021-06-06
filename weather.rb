require "http"
p "Please enter a city"
input_city = gets.chomp

response = HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=#{input_city}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=imperial").to_s
data = JSON.parse(response)

temp_max = data["main"]["temp_max"]
temp_min = data["main"]["temp_min"]
feels_like = data["main"]["feels_like"]
description = data["weather"][0]["description"]

p "Today, in #{input_city.capitalize} the temperature high was #{temp_max}, the low was #{temp_min}. Right now in #{input_city.capitalize} it feels like #{feels_like} overhead were #{description}"
