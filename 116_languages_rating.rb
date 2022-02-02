# frozen_string_literal: true

require 'json'

file = File.read('./modules/data/116_languages_rating.json')
langs = JSON.parse(file)

# p langs.to_a.sort
rating = langs.sort { |a, b| a[1] <=> b[1] }

rating.reverse!

puts 'Rating of laguages:'
i = 1
rating.each do |key, value|
  puts "#{i}\t#{key} - #{value}"
  i += 1
end
