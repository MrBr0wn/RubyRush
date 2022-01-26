require "date"

class Task < Post
  def initialize
    super

    @deadline = Time.now
  end

  def read_from_console
    puts "What to do?"
    @text = STDIN.gets.chomp

    puts "Deadline? (Ex: 25.02.2022)"
    deadline = STDIN.gets.chomp

    @deadline = Date.parse(deadline)
  end

  def to_lines
    time_str = "Created: #{@created_at.strftime("%Y-%m-%d, %H:%M:%S")} \n\n"

    deadline = "Deadline is at #{@deadline}"

    [deadline, @text, time_str]
  end
end
