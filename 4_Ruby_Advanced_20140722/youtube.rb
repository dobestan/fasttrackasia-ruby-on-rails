require 'nokogiri'
require 'open-uri'

print "Youtube Search : "
user_input = gets.tr(' ', '+')

url = "http://www.youtube.com/results?search_query=#{user_input}"
page = Nokogiri::HTML(open(url))
result = "http://youtube.com" + page.css('.yt-lockup')[0].css('.yt-lockup-thumbnail a')[0]["href"]
`open #{result}`
