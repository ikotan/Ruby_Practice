#! /usr/bin/env ruby
require 'anemone'

urls = []

urls.push("http://www.amazon.co.jp/gp/bestsellers/books466282")
urls.push("http://news.yahoo.co.jp")

Anemone.crawl(urls, :depth_limit => 0) do |anemone|
  anemone.on_every_page do |page|
    puts page.doc.xpath("//title")
  end
end

# URL = "http://#{ENV['LOCAL_HOST']}:7777/a/b/c.html"
# opts = {
  # :user_agent  => 'my first crawler',
  # :delay       => 1,
  # :depth_limit => 2,
# }
# puts URL

# Anemone.crawl( URL, opts ) do |anemone|
  # anemone.on_every_page do |page|
    # puts page.url
  # end
# end
