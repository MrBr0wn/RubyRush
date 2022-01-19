require "mail"

puts "Input your e-mail:"

from = STDIN.gets.chomp

# puts "Input password for from #{from}:"
# passwd = STDIN.gets.chomp

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
    password: "XYQ5Uw3m2hSMELwDdh0H",
    authentication: :login,
    tls: true,
    enable_starttls_auto: true,
  }
end

mail = Mail.new do
  from    from
  to      to
  subject subject
end


begin
  mail.deliver

  puts "Mail sended"
rescue Net::ReadTimeout => error
  puts "Send error. Check your connection configuration. " + error.message
rescue ArgumentError => error
  puts error.message
rescue Net::SMTPAuthenticationError => error
  puts error.message
ensure
  puts "Try complete"
end
