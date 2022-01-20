def promptAndGet(prompt)
  print prompt
  res = readline.chomp
  throw :quitRequested if res == "!"
  return res
end

# catch :quitRequested do
#   name = promptAndGet("Name: ")
#   age = promptAndGet("Age: ")
#   sex = promptAndGet("Sex: ")
# end

# -------------------------

class FileSaveError < StandardError
   attr_reader :reason
   def initialize(reason)
      @reason = reason
      puts "Inside the constructor"       # 5 => Inside the constructor
   end
end

File.open("modules/data/nothing.txt", "w") do |file|
  begin
     file.puts "some string"              # 1
     raise "Oups"                         # 2
  rescue
     # Something went wrong!
     puts "rescue part bagin"             # 3 => rescue part bagin
     puts $!                              # 4 => Oups
     raise FileSaveError.new($!)
     puts "rescue part end"
   ensure
     puts "ensure part bagin"             # 6 => ensure part bagin
     file.close                           # 7
     puts "ensure part end"               # 8 => ensure part end
   end
end # 9
