require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.yahoo.co.jp'))

node_set = doc.xpath('//a')
puts node_set.class

element = doc.at('//a')
puts element.class



