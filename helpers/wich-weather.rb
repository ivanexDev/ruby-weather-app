require "./helpers/weather-types.rb"
module WichWeather
    def self.WichWeather(weather)
        if weather == "Sunny" || weather == "Clear"
            Weather_Types.sunny
        elsif weather == "Clouds" 
            Weather_Types.clouds
        elsif weather == "Rain" 
            Weather_Types.rain
        end
    end
end