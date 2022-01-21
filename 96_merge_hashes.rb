list1 = {
  "meat" => "1kg",
  "apples" => "1.5kg",
  "potatoes" => "5kg",
  "bread" => "1th",
}

list2 = {
  "soap" => "1 pack",
  "rug" => "1th",
  "rag" => "2th",
}

list = list1.merge(list2)

puts "***Merged list***\n"
puts list
