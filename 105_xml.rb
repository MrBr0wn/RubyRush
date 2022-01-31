# frozen_string_literal: true

require 'rexml/document'
require 'date'

current_path = File.dirname(__FILE__)
not_found_msg = 'File not found: modules/data/my_expenses.xml'
file_name = "#{current_path}/modules/data/my_expenses.xml"

abort not_found_msg unless File.exist?(file_name)

file = File.read(file_name)

doc = REXML::Document.new(file)

amount_by_day = {}

doc.elements.each('expenses/expense') do |item|
  loss_sum = item.attributes['amount'].to_i
  loss_date = Date.parse(item.attributes['date'])

  amount_by_day[loss_date] ||= 0
  amount_by_day[loss_date] += loss_sum
end

sum_by_month = {}

current_month = amount_by_day.keys.min.strftime('%B %Y')

amount_by_day.keys.sort.each do |key|
  sum_by_month[key.strftime('%B %Y')] ||= 0
  sum_by_month[key.strftime('%B %Y')] += amount_by_day[key]
end

puts "-----[ #{current_month}, spending amount: #{sum_by_month[current_month]} RUB ]-----"

amount_by_day.keys.sort.each do |key|
  if current_month != key.strftime('%B %Y')
    current_month = key.strftime('%B %Y')
    puts "-----[ #{current_month}, spending amount: #{sum_by_month[current_month]} RUB ]-----"
  end

  puts "\t#{key.day}: #{amount_by_day[key]} RUB"
end
