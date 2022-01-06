def say_hi(name)
  puts "Hello, #{name}!"
end

say_hi "Ben"
say_hi "Michael"



def sklonenie(number, krokodil, krokodila, krokodilov)
  if number >= 11 && number <= 14
    return krokodilov
  end

  if number > 100
    ostatok = number % 100
  else
    ostatok = number % 10
  end

  if (number == nil || !number.is_a?(Numeric))
    number = 0
  end

  if ostatok == 1
    return krokodil
  end

  if (ostatok >= 2 && ostatok <= 4)
    return krokodila
  end

  if (ostatok > 4 || ostatok == 0)
    return krokodilov
  end
end

count = ARGV[0].to_i

puts "#{count} " +
  sklonenie(count, "нигритёнок", "нигритёнка", "нигритят") + " " +
  sklonenie(count, "пошёл", "пошли", "пошли") + " " +
  "купаться в море!"
