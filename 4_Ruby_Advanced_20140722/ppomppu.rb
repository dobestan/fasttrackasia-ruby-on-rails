require 'nokogiri'
require 'open-uri'
require 'iconv'
 
page = Nokogiri::HTML(open("http://www.ppomppu.co.kr/zboard/zboard.php?id=ppomppu2&page=1&divpage=4"))
 
puts "*"*20
print "Default Encoding : #{page.encoding}\n"
puts "*"*20
 
conv = Iconv.new("UTF-8", "EUC-kR")
 
1.upto(10) do |x|
  url = "http://www.ppomppu.co.kr/zboard/zboard.php?id=ppomppu2&page=#{x}&divpage=4"
  page = Nokogiri::HTML(open(url))
  titles = page.search("font.list_title")
 
  titles.each do |title|
    puts "#{conv.iconv(title.inner_html)}"
  end
end
