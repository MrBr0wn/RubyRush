elements = ["Rock", "Scissors", "Paper"]

puts "Choice variant of:
	1. Rock
	2. Scissors
	3. Paper
"

choice_usr = gets.chomp.to_i - 1

puts "Your choice is: " + elements[choice_usr].to_s

choice_ai = elements.sample
puts "AI choice is: " + choice_ai

if elements[choice_usr] == choice_ai
	puts "Draw"
else
	if elements[choice_usr] == "Rock" && choice_ai == "Paper"
		puts "You lose. AI win"
	elsif elements[choice_usr] == "Scissors" && choice_ai == "Rock"
		puts "You lose. AI win"
	elsif elements[choice_usr] == "Paper" && choice_ai == "Scissors"
		puts "You lose. AI win"
	else
		puts "You win!"
	end
end

