array = []
max = 0
puts "Input length of array:"

length = gets.chomp.to_i

while length > 0
	array << rand(101)
	length -= 1
end

for i in array do
	
	if max < i
		max = i
	end
end


puts "Array length: " + array.length.to_s
puts "Array: " + array.to_s
puts "Max element: " + max.to_s