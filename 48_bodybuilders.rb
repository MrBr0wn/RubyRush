require "./modules/classes/bodybuilder.rb"

participant1 = Bodybuilder.new
participant2 = Bodybuilder.new
participant3 = Bodybuilder.new

def create(participant)
  rand(10..20).times do
    muscles = %w(biceps triceps deltoid pectorals)
    participant.pump_muscle(muscles.sample)
  end
end

create(participant1)
create(participant2)
create(participant3)

participant1.show_result("First")
participant2.show_result("Second")
participant3.show_result("Third")
