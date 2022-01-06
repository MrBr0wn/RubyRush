array1 = (1..15).to_a
puts array1.to_s
index = nil

until !index.nil? || index.is_a?(Integer)
  puts "Input index for cute: "
  index = STDIN.gets.chomp.to_i
end

def cut_array(array, index)
  array2 = []
  item = 0

  if index <= array.length - 1 && index >= 0
    while index >= item
      array2 << array[item]
      item += 1
    end

    return puts array2.to_s
  else
    puts "Sorry, but nothing to cut"
  end
end

cut_array(array1, index)
