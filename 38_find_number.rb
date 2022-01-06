number = rand(16)
puts "Загадано число от 0 до 15, отгадайте какое? " + number.to_s


def check(number)
	choice = gets.chomp.to_i

	if choice == number
		puts "Вы угадали!"
		exit

	else
		if (number - choice).abs <= 2
			if (number - choice) < 0
				puts "Тепло, но нужно меньше"
			else
				puts "Тепло, но нужно больше"
			end
		else
			if (number - choice) < 0
				puts "Холодно, но нужно меньше"
			else
				puts "Холодно, но нужно больше"
			end
		end
		puts "Попробуйте еще раз"
	end

end

check(number)
check(number)
check(number)
