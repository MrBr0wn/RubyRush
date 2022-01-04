array = []
reverse_array = []

length = rand(5..15)

while length > 0
	array << rand(101)
	length -= 1
end

for i in array do
	reverse_array.unshift(i)
end

puts "Array: " + array.to_s
puts "Reverse array: " + reverse_array.to_s