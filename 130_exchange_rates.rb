# frozen_string_literal: true

require 'net/http'
require 'uri'
require 'rexml/document'
require 'date'

def rates(doc)
  params = {}
  valute_id_usd = 'R01235'
  valute_id_eur = 'R01239'

  params['dollar'] = doc.root.elements["//Valute[@ID=\"#{valute_id_usd}\"]"]
  params['euro'] = doc.root.elements["//Valute[@ID=\"#{valute_id_eur}\"]"]

  puts "\nExchange rates on #{Date.today}:\n\n"
  puts "USD: #{params['dollar'].get_text('Value')}\n"
  puts "EUR: #{params['euro'].get_text('Value')}\n"
end

def get_rates(uri)
  response = Net::HTTP.get_response(uri)

  doc = REXML::Document.new(response.body)

  rates(doc)
end

uri = URI.parse('http://www.cbr.ru/scripts/XML_daily.asp')

get_rates(uri)
