require "json"
require "rest-client"
require "dotenv/load"

$apikey = ENV['WEATHER_KEY']

module Api
  def self.get_data(city)


    response = RestClient.get("https://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=#{$apikey}&units=metric")
    result = JSON.parse(response.to_str)
    
    return [
        ["Description", result["weather"][0]["main"]],
        ["Temp" , "#{result["main"]["temp"]} °C".colorize(:background => :green)],
        ["Humidity" , "#{result["main"]["humidity"]}%"],
        ["Wind" , "#{result["wind"]["speed"]} Km/h"]
    ]
    
  end
end
