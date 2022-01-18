puts "Привет, я твой дневник. Скажи мне что у тебя на уме и в душе?"
puts "Я сохраню всё, что ты напишешь до строчки \"end\" в файл."

current_path = File.dirname(__FILE__)

line = ""
all_lines = []

while line.downcase != "end" do
  line = STDIN.gets.chomp
  all_lines << line
end

time = Time.now

file_name = time.strftime("%Y-%m-%d")
time_str = time.strftime("%H:%M")

separator = "*------------*------------*"

file = File.new(current_path + "/modules/data/diary/" + file_name + ".txt", "a")
file.print("\n" + time_str + "\n")
all_lines.pop

for item in all_lines do
  file.puts(item)
end

file.puts(separator)
file.close

puts "Ваша запись сохранена в файл с именем #{file_name}.txt"
