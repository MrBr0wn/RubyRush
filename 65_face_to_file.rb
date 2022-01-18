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

  time = Time.now
  file_name = "face_#{time.strftime("%d-%m-%Y")}_#{time.strftime("%H:%M")}"

  file_face = File.new(file_path + "/modules/data/faces/#{file_name}.txt", "a")
  file_face.puts "
    #{hair.sample.chomp}
   /       \\
   #{eyes.sample.chomp}
  #{noses.sample.chomp}
   #{mouths.sample.chomp}
    \\_____/"
  file_face.close
else
  puts "Files not found"
end
