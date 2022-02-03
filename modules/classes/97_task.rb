# frozen_string_literal: true

require 'date'

# Children class from Post
class Task < Post
  def initialize
    super

    @deadline = Time.now
  end

  def read_from_console
    puts 'What to do?'
    @text = $stdin.gets.chomp

    puts 'Deadline? (Ex: 25.02.2022)'
    deadline = $stdin.gets.chomp

    @deadline = Date.parse(deadline)
  end

  def to_lines
    time_str = "Created: #{@created_at.strftime('%Y-%m-%d, %H:%M:%S')} \n\n"

    deadline = "Deadline is at #{@deadline}"

    [deadline, @text, time_str]
  end

  def to_db_hash
    super.merge({
                  'text' => @text,
                  'deadline' => @deadline.to_s
                })
  end

  # Preparing data for printing in the terminal
  def load_data(data_hash)
    super(data_hash)
    @deadline = Data.parse(data_hash['deadline'])
  end
end
