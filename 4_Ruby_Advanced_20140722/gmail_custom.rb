# gem install gmail
require 'gmail'

print "to : "
email_to = gets.delete("\n")

print "subject : "
email_subject = gets.delete("\n")

print "body : "
email_body = gets.delete("\n")

gmail = Gmail.connect("dobestan.developer@gmail.com","m6JqLNriWFKYgNhoKC2peFpuzaWsdG")
puts gmail.logged_in?
gmail.deliver do
  to "#{email_to}"
  subject "#{email_subject}"
  text_part do
    body  "#{email_body}"
  end
end

gmail.logout
