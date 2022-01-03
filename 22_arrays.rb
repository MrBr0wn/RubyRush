fruit = [ "apple", "orange", "banana", "mango" ]

puts "Array: " + fruit.to_s

basket = []

basket << "limon"

basket.push("avacado")

basket.push("cherry", "blackberry")

puts "\nBasket: " + basket.to_s

puts basket[0]
puts basket[2]

basket.delete("blackberry")
basket.delete("some")

basket.delete_at(0)

puts "New array: " + basket.to_s