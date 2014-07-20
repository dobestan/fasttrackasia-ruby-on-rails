# gem install gmail
require 'gmail'

gmail = Gmail.connect("dobestan.developer@gmail.com","m6JqLNriWFKYgNhoKC2peFpuzaWsdG")
puts gmail.logged_in?
gmail.deliver do
  to "dobestan@gmail.com"
  subject "hello world"
  text_part do
    body  "hello world"
  end
end

gmail.logout
