require 'nokogiri'
require 'open-uri'

# doc = Nokogiri.HTML(open("http://nokogiri.org/"))

# doc.css('a').each do |element|
  # puts element[:href]
# end

html = open(
  "http://www.amazon.co.jp/gp/bestsellers/",
  "r:Shift_JIS"
)
doc = Nokogiri.HTML(html, nil, "Shift_JIS")
puts doc.xpath('//title').text


html = open(
  "http://www.amazon.co.jp/gp/bestsellers/"
).read.encode("UTF-8", "Shift_JIS",
              :invalid => :replace, :undef => :replace
             )
doc = Nokogiri.HTML(html)
puts doc.xpath('//title').text
