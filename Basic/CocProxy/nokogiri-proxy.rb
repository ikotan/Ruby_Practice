require 'nokogiri'
require 'open-uri'

localhost = ENV['LOCALHOST']

doc = Nokogiri::HTML( open(
  'http://www.yahoo.co.jp', :proxy => "http://#{localhost}:5432") )

puts doc.title
