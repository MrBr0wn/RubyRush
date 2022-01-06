def get_radius(number)
  radius = nil

  until !radius.nil? || radius.is_a?(Numeric)
    if number < 2
      puts "Please, input area of a first circle: "
    else
      puts "Please, input area of a second circle: "
    end
    radius = STDIN.gets.chomp.to_f
  end
  puts radius

  puts calculating_area(radius)
end

def calculating_area(radius)
  puts radius
  result = 3.14 * (radius**2)
  puts result
  return result.round(4).to_s
end

get_radius(1)
get_radius(2)
