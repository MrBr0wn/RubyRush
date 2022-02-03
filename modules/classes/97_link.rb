# frozen_string_literal: true

# Children class for Post
class Link < Post
  def initialize
    super

    @url = ''
  end

  def read_from_console
    puts 'URL:'
    @url = $stdin.gets.chomp

    puts 'URL description:'
    @text = $stdin.gets.chomp
  end

  def to_lines
    time_str = "Created: #{@created_at.strftime('%Y-%m-%d, %H:%M:%S')} \n\n"
    [@url, @text, time_str]
  end

  def to_db_hash
    super.merge({
                  'text' => @text,
                  'url' => @url
                })
  end

  # Preparing data for printing in the terminal
  def load_data(data_hash)
    super(data_hash)
    @url = data_hash['url']
  end
end
