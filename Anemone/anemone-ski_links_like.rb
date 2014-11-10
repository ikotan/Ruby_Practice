require  'anemone'

URL = "http://www.yahoo.co.jp"
Anemone.crawl(URL) do |anemone|
  anemone.skip_links_like (/\/r\//)
  anemone.on_every_page do |page|
    puts page.url
  end
end

