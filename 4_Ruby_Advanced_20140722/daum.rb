require 'nokogiri'
require 'open-uri'
require 'iconv'

page = Nokogiri::HTML(open("http://music.daum.net/chart/chartsong/list"))

puts "*"*20
print "Default Encoding : #{page.encoding}\n"
puts "*"*20

titles = page.search("a.CT_ZONE_LIST_SONG")
titles.each do |title|
  puts "#{title.inner_html}"
end
