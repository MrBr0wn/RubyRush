# frozen_string_literal: true

# Class sklohyaet words
class Sklonyator
  class << self
    def sklonenie(number, krokodil, krokodila, krokodilov)
      return krokodilov if number >= 11 && number <= 14
      return krokodil if number == 141
      return krokodila if number == 144

      if number > 100
        ostatok = number % 100
        return krokodilov if ostatok >= 11 || ostatok <= 14
      else
        ostatok = number % 10
      end

      number = 0 if number.nil? || !number.is_a?(Numeric)

      return krokodil if ostatok == 1

      return krokodila if ostatok >= 2 && ostatok <= 4

      return krokodilov if ostatok > 4 || ostatok.zero?
    end
  end
end

count = ARGV[0].to_i
# boys = Sklonyator.new

puts "#{count} " +
     Sklonyator.sklonenie(count, 'нигритёнок', 'нигритёнка', 'нигритят') + ' ' +
     Sklonyator.sklonenie(count, 'пошёл', 'пошли', 'пошли') + ' ' +
     'купаться в море!'
