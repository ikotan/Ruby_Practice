#! /usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

url = 'http://www.amazon.co.jp/gp/rss/bestsellers/digital-text/2291657051/'
xml = Nokogiri::XML(open(url).read)

puts xml.xpath('/rss/channel/title').text
puts "\n"

item_nodes = xml.xpath('//item')
item_nodes.each do |item|
  # タイトル
  puts item.xpath('title').text

  # ASIN
  puts item.xpath('link').text.match(%r{dp/(.+?)/})[1]
  puts "\n"
end

