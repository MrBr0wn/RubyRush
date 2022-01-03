cars = %w(
	1.SEAT
	2.Skoda
	3.SsangYong
	4.Subaru
	5.Suzuki
	6.Saab
	7.Audi
	8.BMW
	9.Ford
	10.Honda
	11.Hyundai
	12.Kia
)

puts cars[0]

puts "Give a number of the mark from: " + cars.length.to_s

choice = gets.chomp.to_i

if (choice > 0 && choice < cars.length + 1)
	puts "Your present: " + cars[choice - 1]
else
	puts "Sorry, check your choice"
end