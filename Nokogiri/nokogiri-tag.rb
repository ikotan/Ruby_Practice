require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.yahoo.co.jp'))

title = doc.xpath('/html/head/title')
puts title
title = doc.css('title')
puts title

objects = doc.xpath('//a')
puts objects
