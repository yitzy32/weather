require "http"
p "Please enter a city"
input_city = gets.chomp

response = HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=#{input_city}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=imperial")

temp_max = response.parse["main"]["temp_max"]
temp_min = response.parse["main"]["temp_min"]
feels_like = response.parse["main"]["feels_like"]
description = response.parse["weather"][0]["description"]

p "Today, in #{input_city.capitalize} the temperature high was #{temp_max}, the low was #{temp_min}, the real feel was #{feels_like} overhead were #{description}"
