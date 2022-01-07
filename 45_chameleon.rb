class Chameleon

  def initialize
    @color = "green"
    puts "I'm #{@color}"
  end

  def change_color(color)
    @color = color
    puts "And now I'm #{@color}"
  end
end

obj = Chameleon.new

sleep 1

obj.change_color("red")

sleep 1

obj.change_color("blue")
