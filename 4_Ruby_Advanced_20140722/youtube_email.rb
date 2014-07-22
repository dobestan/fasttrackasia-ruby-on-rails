require 'gmail'
require 'nokogiri'
require 'open-uri'

print "Youtube Search : "
user_input = gets.delete!("\n")
user_input_urlsafe = user_input.tr(' ', '+')

url = "http://www.youtube.com/results?search_query=#{user_input_urlsafe}"
page = Nokogiri::HTML(open(url))
result = "http://youtube.com" + page.css('.yt-lockup')[0].css('.yt-lockup-thumbnail a')[0]["href"]

print "Send Email to : "
email_to = gets.delete!("\n")

gmail = Gmail.connect("dobestan.developer@gmail.com","m6JqLNriWFKYgNhoKC2peFpuzaWsdG")
# puts gmail.logged_in?
gmail.deliver do
  to "#{email_to}"
  subject "Youtube Parsing Result of #{user_input}"
  text_part do
    body "#{result}"
  end
end

gmail.logout
