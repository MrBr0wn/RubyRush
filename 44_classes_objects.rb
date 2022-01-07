require "./modules/classes/bridge.rb"

puts "Let's go!"

sleep 1

puts "The river meets O_o"

sleep 1

bridge = Bridge.new

sleep 1

if !bridge.is_opened?
  bridge.open
end

sleep 1

puts "We keep on driving"

puts bridge.is_opened?.to_s
