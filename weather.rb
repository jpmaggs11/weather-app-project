require 'rubygems'
require 'yahoo_weatherman'

puts "Please enter your zip code:"
zip_code = gets.chomp

client = Weatherman::Client.new
response = client.lookup_by_location(zip_code)

time = Time.now
today = time.strftime("%w")
day_3 = response.forecasts[2]['date']
day_4 = response.forecasts[3]['date']
day_5 = response.forecasts[4]['date']

puts "Today's forecast is #{response.forecasts[0]["text"].downcase}."
puts "Tomorrow's forecast is #{response.forecasts[1]["text"].downcase}."
puts "#{day_3.strftime("%A")}'s forecast is #{response.forecasts[2]["text"].downcase}."
puts "#{day_4.strftime("%A")}'s forecast is #{response.forecasts[3]["text"].downcase}."
puts "#{day_5.strftime("%A")}'s forecast is #{response.forecasts[4]["text"].downcase}."

