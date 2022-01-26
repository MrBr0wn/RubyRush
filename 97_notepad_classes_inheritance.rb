require_relative "modules/classes/97_post.rb"
require_relative "modules/classes/97_memo.rb"
require_relative "modules/classes/97_task.rb"
require_relative "modules/classes/97_link.rb"

puts "Hi! I'm your Notepad"
puts "What would you like to write?"

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size
  choices.each_with_index do |type, index|
    puts "\t#{index}. #{type}"
  end

  choice = STDIN.gets.chomp.to_i
end

entry = Post.create(choice)

entry.read_from_console
entry.save

puts "Note was saved"
