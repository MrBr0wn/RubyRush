class Post
  def initialize
    @text = nil
    @created_at = Time.now
  end

  def read_from_console
    # ...
  end

  def to_lines
    # ...
  end

  def save
    file =  File.new(file_path, "w")

    for line in to_lines do
      file.puts(line)
    end

    file.close
  end

  def file_path
    current_path = File.dirname(__FILE__)
    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")

    current_path + "/" + file_name
  end
end
