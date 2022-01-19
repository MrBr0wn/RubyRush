class WordReader

  def read_from_file(file_name)
    begin
      f = File.new(file_name)
      lines = f.readlines
      f.close
      lines.sample.chomp
    rescue SystemCallError
      puts "File is not exist\n"
    end
  end
end
