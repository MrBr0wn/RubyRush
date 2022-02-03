# frozen_string_literal: true

require_relative 'modules/classes/97_post'
require_relative 'modules/classes/97_memo'
require_relative 'modules/classes/97_task'
require_relative 'modules/classes/97_link'

puts "Hi! I'm your Notepad on SQLite3"
puts 'What would you like to write?'

choices = Post.post_types.keys

choice = -1

until choice >= 0 && choice < choices.size
  choices.each_with_index do |type, index|
    puts "\t#{index}. #{type}"
  end

  choice = $stdin.gets.chomp.to_i
end

entry = Post.create(choices[choice])

entry.read_from_console
result_id = entry.save_to_db

puts "Note was saved. Record ID: #{result_id}"
