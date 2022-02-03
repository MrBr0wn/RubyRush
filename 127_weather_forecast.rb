# frozen_string_literal: true

require 'net/http'
require 'uri'
require 'rexml/document'

CLOUDINESS = {
  0 => 'Clear',
  1 => 'Partly cloudy',
  2 => 'Cloudy',
  3 => 'Mainly cloudy'
}.freeze

def print_forecast(params)
  puts "Weather in #{params['city_name']} on #{params['date']} at #{params['hour']}"
  puts "Temp.: #{params['min_temp']} - #{params['max_temp']}"
  puts "Wind: #{params['max_wind']} m/s"
  puts "Cloudy: #{params['clouds']}"
end

def forecast(doc, tomorrow = false)
  params = {}
  params['city_name'] = URI.decode_www_form(doc.root.elements['REPORT/TOWN'].attributes['sname'])[0][0]

  current_forecast = if tomorrow
                       doc.root.elements['REPORT/TOWN'].elements.to_a.last

                     else
                       doc.root.elements['REPORT/TOWN'].elements.to_a[0]
                     end
  params['date'] =
    "#{current_forecast.attributes['day']}
    .#{current_forecast.attributes['month']}
    .#{current_forecast.attributes['year']}".delete("\n ")
  params['hour'] = "#{current_forecast.attributes['hour']}:00"
  params['min_temp'] = current_forecast.elements['TEMPERATURE'].attributes['min']
  params['max_temp'] = current_forecast.elements['TEMPERATURE'].attributes['max']
  params['max_wind'] = current_forecast.elements['WIND'].attributes['max']
  clouds_index = current_forecast.elements['PHENOMENA'].attributes['cloudiness'].to_i
  params['clouds'] = CLOUDINESS[clouds_index]
  params
end

def get_forecast(uri)
  response = Net::HTTP.get_response(uri)

  doc = REXML::Document.new(response.body)

  params = forecast(doc)
  print_forecast(params)

  params = forecast(doc, true)
  print_forecast(params)
end

uri = URI.parse('https://xml.meteoservice.ru/export/gismeteo/point/10336.xml')

get_forecast(uri)
