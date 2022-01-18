require "mail"

from = nil

puts "Input password from #{from}:"

passwd = STDIN.gets.chomp

puts "To: "
to = STDIN.gets.chomp

puts "Theme: "
subject = STDIN.gets.chomp
body = "Test message"

Mail.defaults do
  delivery_method :smtp, {
    address: "smtp.mail.ru",
    port: 465,
    domain: "mail.ru",
    user_name: from,
    password: passwd,
    authentication: :login,
    enable_starttls_auto: true,
  }
end

mail = Mail.new do
  from    from
  to      to
  subject subject
end

puts mail.deliver

puts "Mail sended"
