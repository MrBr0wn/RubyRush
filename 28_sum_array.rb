start = 1
sum = 0
array = []

puts "Input N:"

stop = gets.chomp.to_i

while (stop + 1) > start
	array << start
	sum += start
	start += 1
end

puts "Array: " + array.to_s
puts "Amount of elements: " + array.sum.to_s
puts "Amount of elements: " + sum.to_s