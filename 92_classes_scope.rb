puts "***Anything below is inside class scope***\n\n"
var = nil

class MyClass

  def initialize
    @var = nil
  end

  def check_var
    if defined?(var)
      puts "var is available in class scope"
    else
      puts "var is not available in class scope"
    end

    if defined?(@var)
      puts "@var is available inside method scope"
    else
      puts "@var is not available inside method scope"
    end
  end
end

obj = MyClass.new

obj.check_var

puts "\n\n***Anything below is inside main scope***\n\n"
if defined?(var)
  puts "var is available in main scope"
else
  puts "var is not available in main scope"
end

if defined?(@var)
  puts "@var is available in main scope"
else
  puts "@var is not available in main scope"
end
