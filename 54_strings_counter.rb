file_data = ARGV[0]
file_path = File.dirname(__FILE__)
amount_strings = 0
blank_strings = 0

unless !file_data.nil?
  puts "Input a file data name:"
  file_data = STDIN.gets.chomp
end

file_data = "#{file_path}/modules/data/#{file_data}"

if !File.exist?(file_data)
  puts "File: #{file_data} is not found"
else
  f = File.readlines(file_data)
  puts "Amount lines: #{f.size}"
  puts "Blank lines: #{f.count{ |str| str == "\n" }}"
  puts "Last 5 lines: "
  f[-5, f.size-1].each{ |str| puts str.slice(0..39) }
end
