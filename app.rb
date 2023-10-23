require "./helpers/wich-weather.rb"
require 'terminal-table'
require 'colorize'
require "date"
require "./helpers/api"

today = Date.today

print "In wich city do you want to see the weather? "
city = gets.chomp
datos =Api.get_data(city)


WichWeather.WichWeather(datos[0][1])
table =  Terminal::Table.new :title => "#{city.capitalize} #{today.mday}/#{today.mon}/#{today.year}" , :rows => datos
table.style = {:width => 40, :padding_left => 3, :border_x => "=".blue,:border_y => "|".blue, :border_i => "x".blue}

puts table



