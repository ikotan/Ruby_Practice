require 'anemone'

urls = []
urls.push("http://www.yahoo.co.jp")

opts = {
  :obey_robots_txt => true,
  :depth_limit => 0
}

Anemone.crawl(urls, opts) do |anemone|
  anemone.on_every_page do |page|
    puts page.url
    raise '500 Error!:' + page.url.path.to_s if page.code == 500
  end
  anemone.after_crawl do |page|
    puts "hoge"
  end
end
