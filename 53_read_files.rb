current_path = File.dirname(__FILE__)
puts __FILE__
puts current_path

file_path = current_path + "/modules/data/53_quotes.txt"

if File.exist?(file_path)
  f = File.new(file_path, "r:UTF-8")

  content = f.read

  puts "All quotes:"
  puts content
else
  puts "File not found"
end
puts "\n"

puts "Quote of the day:"
if File.exist?(file_path)
  f = File.new(file_path, "r:UTF-8")
  lines = f.readlines
  f.close
  puts lines.sample
else
  puts "File not found"
end
