today = Time.now

puts "Today is " + today.wday.to_s + "th day of the week..."

if today.wday == 6 || today.wday == 0
	puts "   and it's the weekend"
else
	puts "   and go to work"
end