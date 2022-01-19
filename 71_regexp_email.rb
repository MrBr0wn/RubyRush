puts "Input e-mail address:"
email = STDIN.gets.chomp.strip

regexp_email = Regexp.new("^[a-z\d_+.\-]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+$", "i")

if !regexp_email.match(email).nil?
  puts "Correct"
else
  puts "Incorrect"
end
