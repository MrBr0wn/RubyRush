# frozen_string_literal: true

require 'rexml/document'
require 'date'

current_path = File.dirname(__FILE__)
file_name = "#{current_path}/modules/output/my_expenses.xml"
not_found_msg = 'File "/modules/output/my_expenses.xml" not found'

# Checking XML-file
abort not_found_msg unless File.exist?(file_name)
file = File.read(file_name)

# XML-file validation check
begin
  doc = REXML::Document.new(file)
rescue REXML::ParseException => e
  abort "\n\n\t\t*** FATAL ERROR!!!! ***\n\n" + e.message
end

puts "\n\t***Helper for writing your expenses to the XML-file***\n\n"

puts 'Reason for wasting money:'
reason = $stdin.gets.chomp

puts 'Amount spent:'
amount = $stdin.gets.chomp

puts 'Date (dd.mm.yyy) or blank line for today date:'
date_input = $stdin.gets.chomp

expense_date = if date_input == ''
                 Date.today
               else
                 Date.parse(date_input)
               end

puts 'Input an expense category:'
category = $stdin.gets.chomp

# Preparing data for writing the file
expenses = doc.elements.find('expenses').first
expense = expenses.add_element 'expense', {
  'amount' => amount,
  'category' => category,
  'date' => expense_date.to_s
}
expense.text = reason

# Writing to the file
file = File.new(file_name, 'w')
doc.write(file, 2)
file.close

puts "\n\t***Recorded successfully***"
