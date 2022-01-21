def generate_ticket
  ticket_num = rand(1000000..9999999)
  cities = %w(Moscow Omsk Chelyabinsk Tokyo Minsk Muhosransk)
  route1 = cities.sample
  route2 = (cities - [route1]).sample
  person = "Ivanov Ivan Ivanovich"
  ser1 = rand(10..99)
  ser2 = rand(10..99)
  number = rand(10000..999999)
  passport = "#{ser1}#{ser2} #{number}"
  result = {
    "ticket" => ticket_num,
    "route" => "#{route1} - #{route2}",
    "person" => person,
    "passport" => passport
  }
end

ticket = generate_ticket
tickets = {}
5.times do |i|
  tickets[i] = generate_ticket
end

puts "\n\n***Random Ticket***\n"
ticket.each do |k, v|
  puts "#{k}: #{v}"
end

puts "\n\n"
tickets.each do |k, v|
  puts "#{k}: #{v}"
end
