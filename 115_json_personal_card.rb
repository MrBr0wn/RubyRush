# frozen_string_literal: true

require 'json'

file = File.read('./modules/data/115_json_personal_card.json')

content = JSON.parse(file)

puts "\n\n\t\t*** Personal Card ***\n\n"
puts "\n\tName: #{content['person']['full-name']}"
puts "\n\tPhone number: #{content['person']['contacts']['phone']}"
puts "\n\tE-mail: #{content['person']['contacts']['email']}"
puts "\n\tAbout: #{content['person']['about']}"
