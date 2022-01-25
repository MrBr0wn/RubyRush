class Parent
  def initialize(name)
    @name = name
  end

  def docile?
    if self.class.name == "Parent"
      puts "#{@name} is docile."
    else
      puts "#{@name} is not docile."
    end
  end

  def name
    @name
  end
end

class Child < Parent
  def initialize(name)
    super
  end
end

p = Parent.new("Ben")
p.docile?
puts p.name

c = Child.new("Michael")
c.docile?
puts c.name
