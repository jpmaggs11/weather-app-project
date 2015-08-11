require 'rubygems'
require 'yahoo_weatherman'

puts "Please enter your zip code:"

your_location = gets.chomp

client = Weatherman::Client.new
response = client.lookup_by_location(your_location)

puts response.location['city']

if response.condition['text'] == "Sunny"
	puts "It's 85 degrees and sunny!"
elsif response.condition['text'] == "Cloudy"
	puts "55 degrees and crazy cloudy!"
elsif response.condition['text'] == "Rainy"
	puts "60 degrees and crazy rainy!"
else response.condition['text'] == "Snowy"
	puts "32 degrees and super snowy!"
end