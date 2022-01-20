require "digest"

puts "Input some word: "
word = STDIN.gets.chomp

word_md5 = Digest::MD5.hexdigest word
word_sha1 = Digest::SHA1.hexdigest word

puts "Your word in MD5: #{word_md5}"
puts "Your word in SHA1: #{word_sha1}"
