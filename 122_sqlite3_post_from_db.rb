# frozen_string_literal: true

require_relative 'modules/classes/97_post'
require_relative 'modules/classes/97_memo'
require_relative 'modules/classes/97_task'
require_relative 'modules/classes/97_link'
require 'optparse'

options = {}

OptionParser.new do |opt|
  # Этот текст будет выводиться, когда программа запущена с опцией -h
  opt.banner = 'Usage: 122_sqlite3_post_from_db.rb [options]'

  # Вывод в случае, если запросили help
  opt.on('-h', 'Prints this help') do
    puts opt
    exit
  end

  # Опция --type будет передавать тип поста, который мы хотим считать
  opt.on('--type POST_TYPE', 'какой тип постов показывать ' \
         '(по умолчанию любой)') { |o| options[:type] = o }

  # Опция --id передает номер записи в базе данных (идентификатор)
  opt.on('--id POST_ID', 'если задан id — показываем подробно ' \
         ' только этот пост') { |o| options[:id] = o }

  # Опция --limit передает, сколько записей мы хотим прочитать из базы
  opt.on('--limit NUMBER', 'сколько последних постов показать ' \
         '(по умолчанию все)') { |o| options[:limit] = o }

  # В конце у только что созданного объекта класс OptionParser вызываем
  # метод parse, чтобы он заполнил наш хэш options в соответствии с правилами.
end.parse!

# Result of searching = 1 record finding by ID
# Result of searching = Several records by params
result = if options[:id] && options.size < 2
           Post.find_by_id(options[:id])
         else
           Post.find_all(options[:limit], options[:type], options[:id])
         end
# Printing record on same params
if result.is_a?(Post)
  puts "Record #{result.class.name}, ID: #{options[:id]}"
  result.to_lines.each do |line|
    puts line
  end
# Printing all records
else
  print "#{'-' * 100}\n"
  print "| id\t| @type\t| @created_at\t\t\t| @text\t\t\t @url\t\t| @deadline \t "
  print "\n#{'-' * 100}"

  result.each do |row|
    puts
    row.each do |element|
      print "| #{element.to_s.delete('\\n\\r')[0..40]}\t"
    end
  end
end

puts
