class Link < Post
  def initialize
    super

    @url = ''
  end

  def read_from_console
    puts "URL:"
    @url = STDIN.gets.chomp

    puts "URL description:"
    @text = STDIN.gets.chomp
  end

  def to_lines
    time_str = "Created: #{@created_at.strftime("%Y-%m-%d, %H:%M:%S")} \n\n"
    [@url, @text, time_str]
  end
end
