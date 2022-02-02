# frozen_string_literal: true

require 'json'

REPLACE_KEYS = {
  'number' => 'Порядковый номер',
  'name' => 'Название',
  'latin' => 'Латинское',
  'period_group' => 'Период',
  'atomic_mass' => 'Атомная масса',
  'year' => 'Год открытия',
  'discoverer' => 'Открыватель',
  'pronunciation' => 'Произношение',
  'freeze_temp' => 'Т. замерзания',
  'melt_temp' => 'Т. плавления',
  'density' => 'Плотность'

}

file = File.read('./modules/data/118_mendeleev_json.json')
table = JSON.parse(file)

puts 'What element do you want to know about?'
input_element = $stdin.gets.chomp

if table[input_element]
  element = table[input_element]
  puts "\n"
  element.each do |key, value|
    puts "#{REPLACE_KEYS[key]}:\t#{value}"
  end
else
  abort 'Element not found'
end
