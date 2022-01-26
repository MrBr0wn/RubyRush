require 'pathname'

class Post
  def self.post_types
    [Memo, Link, Task]
  end

  def self.create(type_index)
    post_types[type_index].new
  end

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
    current_path = Pathname.new(__FILE__)
    current_path = current_path.realpath.parent.parent.to_s

    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")

    current_path + "/output/" + file_name
  end
end
