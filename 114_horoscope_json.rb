# frozen_string_literal: true

require 'json'
require 'date'

file = File.read('./modules/data/114_json.json')
sings = JSON.parse(file)

puts 'Your birthday date (dd.mm):'
input_date = $stdin.gets.chomp

user_birth_date = Date.parse(input_date + '.2000')

user_sing = nil

sings.each do |_key, sign|
  dates = sign['dates'].split('..')
  next unless (Date.parse(dates[0] + '.2000') <= user_birth_date) &&
              (user_birth_date <= Date.parse(dates[1] + '.2000'))

  user_sing = sign
end

puts user_sing['dates']
puts user_sing['text']
