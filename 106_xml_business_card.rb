# frozen_string_literal: true

require 'rexml/document'

current_path = File.dirname(__FILE__)
not_found_msg = 'File not found: modules/data/106_business_card.xml'

file_path = "#{current_path}/modules/data/106_business_card.xml"

abort not_found_msg unless File.exist?(file_path)

file = File.read(file_path)

doc = REXML::Document.new(file)

doc.elements.each('business_card/person') do |item|
  puts "\n\tFull name:"
  item.elements.each('full_name') do |full_name|
    full_name.each_element { |el| puts el[0] }
  end

  puts "\n\tContacts:"
  item.elements.each('phone_number') do |phone|
    puts "Phone: #{phone[0].to_s.strip}"
  end

  item.elements.each('email') do |email|
    puts "E-mail: #{email[0].to_s.strip}"
  end

  puts "\n\tAbout"
  item.elements.each('about') do |about|
    puts about[0].to_s.strip
  end
end
