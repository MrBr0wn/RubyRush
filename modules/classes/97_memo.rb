class Memo < Post
  def read_from_console
    puts "New memo (\"end\" on a newline is the end of the input):"

    @text = []
    line = nil

    while line != "end" do
      line = STDIN.gets.chomp
      @text << line
    end

  end

  def to_lines
    time_str = "Created: #{@created_at.strftime("%Y-%m-%d, %H:%M:%S")} \n\n"

    @text.unshift(time_str)
  end
end
