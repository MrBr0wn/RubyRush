# frozen_string_literal: true

# Children class for Post
class Memo < Post
  def read_from_console
    puts 'New memo ("end" on a newline is the end of the input):'

    @text = []
    line = nil

    while line != 'end'
      line = $stdin.gets.chomp
      @text << line
    end

    @text.pop
  end

  def to_lines
    time_str = "Created: #{@created_at.strftime('%Y-%m-%d, %H:%M:%S')} \n\n"

    @text.unshift(time_str)
  end

  def to_db_hash
    super.merge({
                  'text' => @text.join('\n\r')
                })
  end

  # Preparing data for printing in the terminal
  def load_data(data_hash)
    super(data_hash)
    @text = data_hash['text'].split('\n\r')
  end
end
