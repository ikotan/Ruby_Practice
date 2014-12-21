require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.yahoo.co.jp'))

# 検索にヒットした最初のノード
puts doc%' //title'
puts doc/' //title'
puts doc.at('//title')

# xpathの検索にヒットした最初のノード
puts doc.at_xpath('//title')

# cssの検索にヒットした最初のノード
puts doc.at_css('title')

# cssで検索、NodeSet
puts doc.css('title')

# cssで検索、NodeSetから最初のノード
puts doc.css('title')[0]

# cssで検索、NodeSet
puts doc.search('title')

# cssで検索、NodeSetからの最初のノード
puts doc.search('title')[0]

# xpathで検索、NodeSetから最初のノード
puts doc.xpath('//title')[0]

# xpathで検索、NodeSetから最初のノード
puts doc.xpath('//title').first
