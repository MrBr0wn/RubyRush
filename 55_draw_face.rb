file_path = File.dirname(__FILE__)
if File.exist?(file_path + "/modules/data/55_hair.txt") &&
  File.exist?(file_path + "/modules/data/55_eyes.txt") &&
  File.exist?(file_path + "/modules/data/55_noses.txt")
  File.exist?(file_path + "/modules/data/55_eyes.txt") &&
  File.exist?(file_path + "/modules/data/55_mouths.txt")

  hair = File.readlines(file_path + "/modules/data/55_hair.txt")
  eyes = File.readlines(file_path + "/modules/data/55_eyes.txt")
  noses = File.readlines(file_path + "/modules/data/55_noses.txt")
  mouths = File.readlines(file_path + "/modules/data/55_mouths.txt")
else
  puts "Files not found"
end
puts "
  #{hair.sample.chomp}
 /       \\
 #{eyes.sample.chomp}
#{noses.sample.chomp}
 #{mouths.sample.chomp}
  \\_____/"
