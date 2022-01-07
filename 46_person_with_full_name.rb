require "./modules/classes/human.rb"

puts "We have three person"

person1 = Human.new("James", "Bond", 60)
puts person1.return_full_name + "#{person1.is_old? ? " is elderly" : " is young"}"

sleep 1

person2 = Human.new("Jason", "Bourne", 50)
puts person2.return_full_name + "#{person2.is_old? ? " is elderly" : " is young"}"

sleep 1

person3 = Human.new("Mr.", "Bean", 80)
puts person3.return_full_name + "#{person3.is_old? ? " is elderly" : " is young"}"
