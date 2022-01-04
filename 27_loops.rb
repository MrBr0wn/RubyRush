count = 1

while count <= 5 do
	puts count
	count += 1
	sleep 0.5
end

puts "I going to look"


eggs = [0, 0, 0, 0, 1, 1, 0, 0, 1, 23, 0, 2, 0, 25, 0, 0, 1, 0]

good_eggs = []
broken_cont = 0

for i in eggs do
	if i != 0
		broken_cont += 1
	else
		good_eggs << i
	end
end

puts "\nAll: " + eggs.to_s
puts "Good eggs" + good_eggs.to_s
puts "Broken: " + broken_cont.to_s

puts ""

names = []
user_input = nil
puts "Вводите имена через Enter (по завершению введите пустую строку):"

while user_input != "" do
	user_input = gets.chomp
	names << user_input
end

for i in names do
	puts "Привет, " + i
	sleep 1

	if i == "Elis"
		puts "Элис??? Кто такая Элис?"
		sleep 1
		break
	end
end

puts 'Что это за девочка и где она живет?'
sleep 1
puts 'А вдруг она не курит? А вдруг она не пьёт?'
sleep 1
puts 'А мы с такими рожами возьмем да и припрёмся к Элис.'