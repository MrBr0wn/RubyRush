def my_method(*params)
  puts params.to_s
  puts params.class
  if params.size > 4
    params.sort!
  end
  params
end

my_method(1, 5, 3, 6)
arr = my_method(1, 5, 3, 6)
puts "arr is #{arr}"
my_method(*arr)
my_method(1, 5, 3, 6, 0, 12)
puts "\n"

wow = ""
puts (1..3).map { wow = "Wow!"; wow }
puts "wow is " + wow

(1..3).map do |i|
  puts i**2
end
puts "\n"


def twice
  yield "and one"
  yield "and two"
  yield "this is yield block"
  puts "Some code..."
end

twice { |words| puts "!!! " + words }
puts "\n"
puts "\n"
puts "\n"

my_method(arr, &twice { |words| puts "!!! " + words })
