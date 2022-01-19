str = STDIN.gets.chomp

regexp_tags = Regexp.new("\#[[:word:]-]+", "i")

tags = str.scan(regexp_tags)

puts tags.to_s
